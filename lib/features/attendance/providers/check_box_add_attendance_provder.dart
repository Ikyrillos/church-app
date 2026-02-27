import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/services/app_shared_prefrence.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/core/widgets/toast_m.dart' show AppToast;
import 'package:abosiefienapp/features/attendance/models/add_attendance_model.dart';
import 'package:abosiefienapp/features/attendance/providers/attendance_providers.dart';
import 'package:abosiefienapp/features/attendance/repository/add_class_attendance_repo.dart';
import 'package:abosiefienapp/features/attendance/repository/check_box_add_attendance_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

// NOTE: DataState enum is defined in add_attendance_provider.dart.
// Import it from there to avoid duplicate definitions.
import 'package:abosiefienapp/features/attendance/providers/add_attendance_provider.dart'
    show DataState;

part 'check_box_add_attendance_provder.g.dart';

class CheckBoxAddAttendanceState {
  final List<AddAttendanceModel> data;
  final DataState dataState;
  final Map<String, bool> checkboxStates;
  final String attendanceDate;
  final String errorMsg;

  CheckBoxAddAttendanceState({
    this.data = const [],
    this.dataState = DataState.noData,
    this.checkboxStates = const {},
    this.attendanceDate = '',
    this.errorMsg = '',
  });

  CheckBoxAddAttendanceState copyWith({
    List<AddAttendanceModel>? data,
    DataState? dataState,
    Map<String, bool>? checkboxStates,
    String? attendanceDate,
    String? errorMsg,
  }) {
    return CheckBoxAddAttendanceState(
      data: data ?? this.data,
      dataState: dataState ?? this.dataState,
      checkboxStates: checkboxStates ?? this.checkboxStates,
      attendanceDate: attendanceDate ?? this.attendanceDate,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}

@Riverpod(keepAlive: true)
class CheckBoxAddAttendanceNotifier extends _$CheckBoxAddAttendanceNotifier {
  final CheckBoxAddAttendanceRepository _repository =
      CheckBoxAddAttendanceRepository();
  final AddClassAttendanceRepo addClassAttendanceRepo =
      AddClassAttendanceRepo();
  final CustomFunctions customFunctions = CustomFunctions();

  @override
  CheckBoxAddAttendanceState build() {
    return CheckBoxAddAttendanceState();
  }

  // ── Checkbox state (SharedPreferences) ─────────────────────────────────────

  Future<void> saveCheckboxState(String stateCheckBox, bool value) async {
    final newStates = Map<String, bool>.from(state.checkboxStates);
    newStates[stateCheckBox] = value;
    state = state.copyWith(checkboxStates: newStates);
    await AppSharedPreferences.setBool(stateCheckBox, value);
  }

  Future<void> loadCheckboxStates() async {
    final newStates = Map<String, bool>.from(state.checkboxStates);
    for (var item in state.data) {
      final idStr = item.id.toString();
      final val = AppSharedPreferences.getBool(idStr);
      newStates[idStr] = val ?? false;
    }
    state = state.copyWith(checkboxStates: newStates);
  }

  Future<void> clearCheckboxStates() async {
    for (var item in state.data) {
      await AppSharedPreferences.remove(item.id.toString());
    }
    state = state.copyWith(checkboxStates: {});
  }

  // ── Data loading (Realm-backed) ─────────────────────────────────────────────

  /// Fetches names from the API and caches them into Realm via [AttendanceLocalDatasource].
  Future<void> saveJsonData() async {
    state = state.copyWith(dataState: DataState.loading);

    final Either<Failure, List<Map<String, dynamic>>> jsonData =
        await _repository.getAllNames();

    jsonData.fold(
      (Failure l) {
        printError('Failed to fetch data from repository: $l');
        state = state.copyWith(dataState: DataState.noData);
      },
      (List<Map<String, dynamic>> r) async {
        if (r.isNotEmpty) {
          // Convert raw maps to domain models and persist via Realm datasource.
          final names = r
              .where((e) => e['id'] != null && e['name'] != null)
              .map((e) => AddAttendanceModel(
                    id: e['id'] as int,
                    name: e['name'] as String,
                  ))
              .toList();

          final datasource = ref.read(attendanceLocalDatasourceProvider);
          datasource.replaceAllNames(names);

          printDone('Cached ${names.length} names into Realm.');
          await retrieveJsonData();
        } else {
          printWarning('No data fetched from repository.');
          state = state.copyWith(dataState: DataState.noData);
        }
      },
    );
  }

  /// Reads names from the Realm cache and loads them into state.
  Future<void> retrieveJsonData() async {
    state = state.copyWith(dataState: DataState.loading);

    final datasource = ref.read(attendanceLocalDatasourceProvider);

    // Get all cached names from Realm.
    final cached = datasource.getAllNames();

    if (cached.isNotEmpty) {
      printDone('Loaded ${cached.length} names from Realm.');
      state = state.copyWith(data: cached);
      await loadCheckboxStates();
      state = state.copyWith(dataState: DataState.loaded);
    } else {
      printWarning('No names found in Realm cache.');
      state = state.copyWith(dataState: DataState.noData);
    }
  }

  /// Loads from Realm cache first; downloads from API only when cache is empty.
  Future<void> loadDataOnStart() async {
    state = state.copyWith(dataState: DataState.loading);

    await retrieveJsonData();

    if (state.data.isEmpty) {
      await saveJsonData();
    }

    state = state.copyWith(
      dataState: state.data.isNotEmpty ? DataState.loaded : DataState.noData,
    );
  }

  // ── Date helpers ────────────────────────────────────────────────────────────

  void convertToDate() {
    final finalFormattedDate =
        intl.DateFormat('yyyy-MM-dd').format(DateTime.now());
    printDone('finalFormattedDate $finalFormattedDate');
    state = state.copyWith(attendanceDate: finalFormattedDate);
  }

  void setSelectedAttendanceDate(String date) {
    state = state.copyWith(attendanceDate: date);
  }

  // ── Submit attendance ───────────────────────────────────────────────────────

  Future<bool> addAttendance(BuildContext context) async {
    convertToDate();
    customFunctions.showProgress(context);

    final List<int> selectedIds = state.checkboxStates.entries
        .where((entry) => entry.value == true)
        .map((entry) => int.tryParse(entry.key) ?? 0)
        .where((id) => id != 0)
        .toList();

    final Either<Failure, dynamic> response =
        await addClassAttendanceRepo.requestAddAttendance({
      "attendanceDate": state.attendanceDate,
      "makhdomsId": selectedIds,
      "points": 0,
    });

    printDone('response $response');

    bool success = false;
    response.fold(
      (Failure l) {
        printError(l.message);
        AppToast.showError(l.message);
        customFunctions.showError(
            message: 'An error occurred, please try again', context: context);
        success = false;
      },
      (r) {
        if (r != null && r['success'] == true) {
          state = state.copyWith(errorMsg: r["errorMsg"] ?? '');
          clearCheckboxStates();
          success = true;
        } else if (r != null && r['success'] == false) {
          customFunctions.showError(
              message: r["errorMsg"].toString(), context: context);
          success = false;
        }
      },
    );

    customFunctions.hideProgress();
    return success;
  }
}
