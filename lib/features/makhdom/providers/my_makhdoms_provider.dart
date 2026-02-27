import 'dart:io';

import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/features/makhdom/models/my_servees_model.dart';
import 'package:abosiefienapp/core/models/radio_button_model.dart';
import 'package:abosiefienapp/features/makhdom/repository/my_makhdoms_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart' as intl;
import 'package:url_launcher/url_launcher.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

part 'my_makhdoms_provider.freezed.dart';
part 'my_makhdoms_provider.g.dart';

@freezed
class MyMakhdomsState with _$MyMakhdomsState {
  const factory MyMakhdomsState({
    @Default(<MyServeesData>[]) List<MyServeesData> items,
    required RadioButtonModel sortValue,
    @Default(1) int sortColumn,
    @Default(1) int sortDirection,
    @Default('') String absentDate,
    @Default(0) int listLength,
    @Default(<MyServeesData>[]) List<MyServeesData> allMakhdoms,
    @Default('حدث خطأ ما برجاء المحاولة مرة اّخرى') String errorMsg,
    @Default(false) bool isLoading,
  }) = _MyMakhdomsState;
}

@Riverpod(keepAlive: true)
class MyMakhdomsNotifier extends _$MyMakhdomsNotifier {
  @override
  MyMakhdomsState build() {
    return MyMakhdomsState(sortValue: RadioButtonModel(1, true));
  }

  MyMakhdomsRepo myMakhdomsRepo = MyMakhdomsRepo();
  CustomFunctions customFunctions = CustomFunctions();

// Sort and Filter
  TextEditingController searchController = TextEditingController();

  void setSelectedAbsentDate(String? value) {
    state = state.copyWith(absentDate: value ?? DateTime.now().toString());
  }

  void clearFilterDate() {
    state = state.copyWith(absentDate: '');
  }

  void setSelectedSortColumn(int? value) {
    state = state.copyWith(sortColumn: value!);
  }

  void setSelectedSortDir(int? value) {
    state = state.copyWith(sortDirection: value!);
  }

  Future<bool> myMakhdoms(BuildContext context) async {
    printWarning('sortColumn ${state.sortColumn}');
    printWarning('sortDirection ${state.sortDirection}');
    printWarning('absentDate ${state.absentDate}');
    state = state.copyWith(isLoading: true);
    Either<Failure, MyServeesModel?> responseMyMakhdoms =
        await myMakhdomsRepo.requestMyMakhdoms(
            state.sortColumn, state.sortDirection, state.absentDate);
    printDone('response $responseMyMakhdoms');

    bool result = responseMyMakhdoms.fold(
      (Failure l) {
        printError(l.message);
        customFunctions.showError(message: state.errorMsg, context: context);
        state = state.copyWith(isLoading: false);
        return false;
      },
      (MyServeesModel? r) {
        state = state.copyWith(
          listLength: r!.data!.length,
          allMakhdoms: r.data!,
          items: r.data!,
          errorMsg: r.errorMsg,
          isLoading: false,
        );
        printInfo('SET MYMAKHDOMS IN STORAGE NOW');
        return true;
      },
    );
    return result;
  }

  void sendWhatsAppMessage({
    required BuildContext context,
    required String phone,
  }) async {
    String url() {
      if (Platform.isIOS) {
        return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse('')}";
      } else {
        return "https://wa.me/02$phone/?text=";
      }
    }

    if (await canLaunchUrl(Uri.parse(url()))) {
      try {
        launchUrl(Uri.parse(url()));
      } catch (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error.toString()),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            backgroundColor: Theme.of(context).colorScheme.errorContainer,
          ),
        );
      }
    }
  }

  int get makhdomsListLength => state.listLength;

  String? convertToDate(String? datestring) {
    String apiDateString = datestring ?? '';
    DateTime apiDate = DateTime.parse(apiDateString);
    String formattedDate = intl.DateFormat('dd/MM/yyyy').format(apiDate);
    return formattedDate;
  }

  void filterSearchResults(String query) {
    state = state.copyWith(
      items: state.allMakhdoms
          .where(
              (item) => item.name!.toLowerCase().contains(query.toLowerCase()))
          .toList(),
    );
  }
}
