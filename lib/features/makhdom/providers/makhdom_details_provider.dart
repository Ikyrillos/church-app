import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/extension_method/extension_navigation.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/features/makhdom/models/makhdom_update_model.dart';
import 'package:abosiefienapp/features/makhdom/models/mymakhdoms_model.dart' as mymakhdomsmodel;
import 'package:abosiefienapp/features/makhdom/repository/update_makhdom_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:abosiefienapp/core/route/app_routes.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

part 'makhdom_details_provider.g.dart';

@Riverpod(keepAlive: true)
class MakhdomDetailsNotifier extends _$MakhdomDetailsNotifier {
  CustomFunctions customFunctions = CustomFunctions();
  UpdateMakhdomRepo updateMakhdomRepo = UpdateMakhdomRepo();

  @override
  mymakhdomsmodel.Data? build() {
    return null;
  }

  void setRecievedMakhdom(mymakhdomsmodel.Data? makhdom) {
    state = makhdom;
    printError('recievedMakhdom $state');
  }

  void updateName(String name) {
    if (state != null) {
      state = state!.copyWith(name: name);
    }
  }

  void updatePhone(String phone) {
    if (state != null) {
      state = state!.copyWith(phone: phone);
    }
  }

  void updatePhone2(String phone2) {
    if (state != null) {
      state = state!.copyWith(phone2: phone2);
    }
  }

  void updateAddNo(int addNo) {
    if (state != null) {
      state = state!.copyWith(addNo: addNo);
    }
  }

  void updateAddStreet(String addStreet) {
    if (state != null) {
      state = state!.copyWith(addStreet: addStreet);
    }
  }

  void updateAddBeside(String addBeside) {
    if (state != null) {
      state = state!.copyWith(addBeside: addBeside);
    }
  }

  void updateFather(String father) {
    if (state != null) {
      state = state!.copyWith(father: father);
    }
  }

  void updateUniversity(String university) {
    if (state != null) {
      state = state!.copyWith(university: university);
    }
  }

  void updateFaculty(String faculty) {
    if (state != null) {
      state = state!.copyWith(faculty: faculty);
    }
  }

  void updateStudentYear(int studentYear) {
    if (state != null) {
      state = state!.copyWith(studentYear: studentYear);
    }
  }

  void updateNotes(String notes) {
    if (state != null) {
      state = state!.copyWith(notes: notes);
    }
  }

  void updateGender(int genderId) {
    if (state != null) {
      state = state!.copyWith(genderId: genderId);
    }
  }

  Future<bool?> updateMyMakhdom(
      BuildContext context, mymakhdomsmodel.Data data) async {
    printWarning('data $data');

    customFunctions.showProgress(context);
    Either<Failure, MakhdomUpdateModel?> responseUpdateMyMakhdom =
        await updateMakhdomRepo.requestUpdateMakhdom(data);
    printDone('response $responseUpdateMyMakhdom');
    
    // We handle the result but don't return inside fold to avoid issues
    bool success = false;
    
    responseUpdateMyMakhdom.fold(
      (l) {
        printError(l.message);
        customFunctions.showError(
            message: 'لم يتم حفظ التعديلات', context: context);
        customFunctions.hideProgress();
        success = false;
      },
      (r) {
        customFunctions.showSuccess(
            message: 'تم التعديل بنجاح', context: context);
        context.pushNamed(routeName: AppRoutes.myMakhdomsRouteName);
        customFunctions.hideProgress();
        success = true;
      },
    );
    return success;
  }

  String? convertToDate(String? datestring) {
    if (datestring == null) return null;
    try {
      String apiDateString = datestring;
      DateTime apiDate = DateTime.parse(apiDateString);
      String formattedDate = intl.DateFormat('dd/MM/yyyy').format(apiDate);
      printError('formattedDate $formattedDate');
      return formattedDate;
    } catch (e) {
      return datestring;
    }
  }

  void changeBirthdate(DateTime? selected) {
    if (selected != null && state != null) {
      final formatted = intl.DateFormat('yyyy-MM-dd').format(selected);
      state = state!.copyWith(birthdate: formatted);
      printWarning('NEW BIRTHDAY ${state!.birthdate ?? ''}');
    }
  }
}
