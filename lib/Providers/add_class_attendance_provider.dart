import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/model/mymakhdoms_model.dart';
import 'package:abosiefienapp/repositories/add_class_attendance_repo.dart';
import 'package:abosiefienapp/repositories/my_makhdoms_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/utils/app_debug_prints.dart';

part 'add_class_attendance_provider.g.dart';

class AddClassAttendanceState {
  final List<Data> allMakhdoms;
  final Set<int> selectedIds;
  final String searchQuery;
  final bool isLoading;
  final String errorMsg;
  final String absentDate;

  AddClassAttendanceState({
    this.allMakhdoms = const [],
    this.selectedIds = const {},
    this.searchQuery = '',
    this.isLoading = false,
    this.errorMsg = '',
    this.absentDate = '',
  });

  AddClassAttendanceState copyWith({
    List<Data>? allMakhdoms,
    Set<int>? selectedIds,
    String? searchQuery,
    bool? isLoading,
    String? errorMsg,
    String? absentDate,
  }) {
    return AddClassAttendanceState(
      allMakhdoms: allMakhdoms ?? this.allMakhdoms,
      selectedIds: selectedIds ?? this.selectedIds,
      searchQuery: searchQuery ?? this.searchQuery,
      isLoading: isLoading ?? this.isLoading,
      errorMsg: errorMsg ?? this.errorMsg,
      absentDate: absentDate ?? this.absentDate,
    );
  }

  List<Data> get filteredMakhdoms {
    if (searchQuery.isEmpty) {
      return allMakhdoms;
    }
    return allMakhdoms
        .where((item) =>
            item.name != null &&
            item.name!.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
  }
}

@Riverpod(keepAlive: true)
class AddClassAttendanceNotifier extends _$AddClassAttendanceNotifier {
  MyMakhdomsRepo myMakhdomsRepo = MyMakhdomsRepo();
  AddClassAttendanceRepo addClassAttendanceRepo = AddClassAttendanceRepo();
  CustomFunctions customFunctions = CustomFunctions();

  @override
  AddClassAttendanceState build() {
    return AddClassAttendanceState();
  }

  Future<void> myMakhdoms(BuildContext context) async {
    convertToDate();
    state = state.copyWith(isLoading: true);
    // customFunctions.showProgress(context); // We use state.isLoading for UI feedback ideally, but keeping side effect for now if UI expects it. 
    // Actually, let's try to remove context if possible, but the original code used context heavily.
    // I will keep showProgress calls in the UI layer if possible, or just use state.isLoading.
    // For now, I'll remove showProgress here and let the UI show a spinner based on state.isLoading.
    
    // Original params: sortCoulmn=1, sortDirection=1
    Either<Failure, MyMakhdomsModel?> responseMyMakhdoms = await myMakhdomsRepo
        .requestMyMakhdoms(1, 1, state.absentDate);
    
    responseMyMakhdoms.fold(
      (Failure l) {
        printError(l.message);
        state = state.copyWith(isLoading: false, errorMsg: l.message ?? 'Error');
        // customFunctions.showError(message: state.errorMsg, context: context);
      },
      (MyMakhdomsModel? r) {
        if (r?.data != null) {
          state = state.copyWith(
            allMakhdoms: r!.data!,
            isLoading: false,
            errorMsg: r.errorMsg ?? '',
          );
        } else {
          state = state.copyWith(isLoading: false);
        }
      },
    );
  }

  void toggleAttendance(int makhdomId) {
    final newSet = Set<int>.from(state.selectedIds);
    if (newSet.contains(makhdomId)) {
      newSet.remove(makhdomId);
    } else {
      newSet.add(makhdomId);
    }
    state = state.copyWith(selectedIds: newSet);
  }

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void convertToDate() {
    DateTime dayToday = DateTime.now();
    String finalFormatedDate =
        intl.DateFormat('yyyy-MM-dd').format(dayToday).toString();
    state = state.copyWith(absentDate: finalFormatedDate);
  }

  Future<bool> addAttendance(BuildContext context) async {
    // rePareListToSend -> state.selectedIds.toList()
    
    customFunctions.showProgress(context);
    
    Either<Failure, dynamic> response = await addClassAttendanceRepo
        .requestAddAttendance({
      "attendanceDate": state.absentDate,
      "makhdomsId": state.selectedIds.toList(),
      "points": 0
    });
    
    bool success = false;
    response.fold(
      (Failure l) {
        printError(l.message);
        customFunctions.showError(message: l.message ?? 'Error', context: context);
        success = false;
      },
      (r) {
        customFunctions.showSuccess(message: r['data'] ?? 'Saved', context: context);
        success = true;
      },
    );

    customFunctions.hideProgress();
    return success;
  }
}
