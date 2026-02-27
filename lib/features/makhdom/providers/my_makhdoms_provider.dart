import 'dart:io';

import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/features/makhdom/models/mymakhdoms_model.dart';
import 'package:abosiefienapp/core/models/radio_button_model.dart';
import 'package:abosiefienapp/features/makhdom/repository/my_makhdoms_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:url_launcher/url_launcher.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:abosiefienapp/core/theme/app_styles_util.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

part 'my_makhdoms_provider.g.dart';

class MyMakhdomsState {
  final List<Data> items;
  final RadioButtonModel sortValue;
  final int sortCoulmn;
  final int sortDirection;
  final String absentDate;
  final int listLength;
  final List<Data> allMakhdoms;
  final String errorMsg;

  MyMakhdomsState({
    required this.items,
    required this.sortValue,
    this.sortCoulmn = 1,
    this.sortDirection = 1,
    this.absentDate = '',
    this.listLength = 0,
    required this.allMakhdoms,
    this.errorMsg = 'حدث خطأ ما برجاء المحاولة مرة اّخرى',
  });

  MyMakhdomsState copyWith({
    List<Data>? items,
    RadioButtonModel? sortValue,
    int? sortCoulmn,
    int? sortDirection,
    String? absentDate,
    int? listLength,
    List<Data>? allMakhdoms,
    String? errorMsg,
  }) {
    return MyMakhdomsState(
      items: items ?? this.items,
      sortValue: sortValue ?? this.sortValue,
      sortCoulmn: sortCoulmn ?? this.sortCoulmn,
      sortDirection: sortDirection ?? this.sortDirection,
      absentDate: absentDate ?? this.absentDate,
      listLength: listLength ?? this.listLength,
      allMakhdoms: allMakhdoms ?? this.allMakhdoms,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}

@Riverpod(keepAlive: true)
class MyMakhdomsNotifier extends _$MyMakhdomsNotifier {
  @override
  MyMakhdomsState build() {
    return MyMakhdomsState(
      items: [],
      sortValue: RadioButtonModel(1, true),
      allMakhdoms: [],
    );
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
    state = state.copyWith(sortCoulmn: value!);
  }

  void setSelectedSortDir(int? value) {
    state = state.copyWith(sortDirection: value!);
  }

  Future<bool> myMakhdoms(BuildContext context) async {
    printWarning('sortCoulmn ${state.sortCoulmn}');
    printWarning('sortDirection ${state.sortDirection}');
    printWarning('absentDate ${state.absentDate}');
    customFunctions.showProgress(context);
    Either<Failure, MyMakhdomsModel?> responseMyMakhdoms =
        await myMakhdomsRepo.requestMyMakhdoms(
            state.sortCoulmn, state.sortDirection, state.absentDate);
    printDone('response $responseMyMakhdoms');

    bool result = responseMyMakhdoms.fold(
      (Failure l) {
        printError(l.message);
        customFunctions.showError(message: state.errorMsg, context: context);
        customFunctions.hideProgress();
        return false;
      },
      (MyMakhdomsModel? r) {
        state = state.copyWith(
          listLength: r!.data!.length,
          allMakhdoms: r.data!,
          items: r.data!,
          errorMsg: r.errorMsg,
        );
        printInfo('SET MYMAKHDOMS IN STORAGE NOW');
        customFunctions.hideProgress();
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
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
            content: Text(
              error.toString(),
              textDirection: TextDirection.rtl,
              style: AppStylesUtil.textRegularStyle(
                18,
                Colors.white,
                FontWeight.w400,
              ),
            )));
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
