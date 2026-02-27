import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/core/models/dropdown_model.dart';
import 'package:abosiefienapp/core/models/radio_button_model.dart';
import 'package:abosiefienapp/features/auth/models/user_model.dart' hide Data;
import 'package:abosiefienapp/features/makhdom/models/servant_model.dart'
    as khadem;
import 'package:abosiefienapp/features/makhdom/models/servant_model.dart';
import 'package:abosiefienapp/features/makhdom/repository/add_makhdom_repo.dart';
import 'package:abosiefienapp/features/makhdom/repository/khadem_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:abosiefienapp/core/utils/app_debug_prints.dart';
import 'package:abosiefienapp/features/auth/providers/login_provider.dart';

part 'add_makhdom_provider.g.dart';

class AddMakhdomState {
  final List<ServantData>? allKhodam;
  final int? selectedKhadem;
  final List<DropdownModel>? dropdownList;
  final String? birthdate;

  AddMakhdomState({
    this.allKhodam,
    this.selectedKhadem = 2,
    this.dropdownList,
    this.birthdate,
  });

  AddMakhdomState copyWith({
    List<ServantData>? allKhodam,
    int? selectedKhadem,
    List<DropdownModel>? dropdownList,
    String? birthdate,
  }) {
    return AddMakhdomState(
      allKhodam: allKhodam ?? this.allKhodam,
      selectedKhadem: selectedKhadem ?? this.selectedKhadem,
      dropdownList: dropdownList ?? this.dropdownList,
      birthdate: birthdate ?? this.birthdate,
    );
  }
}

@Riverpod(keepAlive: true)
class AddMakhdomNotifier extends _$AddMakhdomNotifier {
  final GlobalKey<FormState> formKey = GlobalKey();
  CustomFunctions customFunctions = CustomFunctions();
  AddMakhdomRepo addMakhdomRepo = AddMakhdomRepo();
  KhademRepo khademRepo = KhademRepo();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController phone2Controller = TextEditingController();
  final TextEditingController addressNumberController = TextEditingController();
  final TextEditingController addressStreetController = TextEditingController();
  final TextEditingController addressBesideController = TextEditingController();
  final TextEditingController fatherController = TextEditingController();
  final TextEditingController universityController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();
  final TextEditingController studentYearController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final RadioButtonModel genderValue = RadioButtonModel(1, true);

  @override
  AddMakhdomState build() {
    return AddMakhdomState(dropdownList: []);
  }

  void validate(BuildContext context) {
    if (formKey.currentState!.validate()) {
      printDone('Validated');
      UserModel? recievedUserModel = ref.read(loginNotifierProvider).user;
      printWarning('nameController =${nameController.text}');
      printWarning('phoneController =${phoneController.text}');
      printWarning('selectedKhadem =${state.selectedKhadem}');
      addMyMakhdom(context, {
        "id": 0,
        "name": nameController.text,
        "phone": phoneController.text,
        "phone2": phone2Controller.text,
        "birthdate": state.birthdate,
        "addNo": addressNumberController.text == ''
            ? 0
            : addressNumberController.text,
        "addStreet": addressStreetController.text,
        "addFloor": 0,
        "addBeside": addressBesideController.text,
        "father": fatherController.text,
        "university": universityController.text,
        "faculty": facultyController.text,
        "studentYear":
            studentYearController.text == '' ? 0 : studentYearController.text,
        "khademId": state.selectedKhadem,
        "groupId": 0,
        "notes": notesController.text,
        "levelId": recievedUserModel!.data!.levelId,
        "genderId": genderValue.value,
        "job": "string",
        "socialId": 1,
        "lastAttendanceDate": "2023-11-21T13:20:39.152Z",
        "lastCallDate": "2023-11-21T13:20:39.152Z"
      });
    } else {
      printError('Not Validated');
      customFunctions.showError(
          message: 'برجاء إدخال البيانات المطلوبة', context: context);
    }
  }

  void clearForm() {
    nameController.text = '';
    phoneController.text = '';
    phone2Controller.text = '';

    addressNumberController.text = '';
    addressStreetController.text = '';
    addressBesideController.text = '';
    fatherController.text = '';
    universityController.text = '';
    facultyController.text = '';
    studentYearController.text = '';

    notesController.text = '';
    genderValue.value = 1;
    state = state.copyWith(birthdate: '', selectedKhadem: 2);
  }

  void changeBirthdate(DateTime? selected) {
    if (selected != null) {
      final formatted = intl.DateFormat('yyyy-MM-dd').format(selected);
      state = state.copyWith(birthdate: formatted);
      printWarning('NEW BIRTHDAY $formatted');
    }
  }

  void setSelectedKhadem(int? value) {
    state = state.copyWith(selectedKhadem: value);
  }

  Future<bool> addMyMakhdom(
      BuildContext context, Map<String, dynamic> body) async {
    customFunctions.showProgress(context);
    var responseAddMakhdom = await addMakhdomRepo.requestAddMakhdom(body);
    printDone('response $responseAddMakhdom');
    return responseAddMakhdom.fold(
      (l) {
        printError(l.message);
        customFunctions.showError(message: 'لم يتم الإضافة', context: context);
        customFunctions.hideProgress();
        return false;
      },
      (r) {
        printInfo('Added Now');
        customFunctions.showSuccess(
            message: 'تم الإضافة بنجاح', context: context);
        clearForm();
        customFunctions.hideProgress();
        return true;
      },
    );
  }

  List<DropdownModel?> createListOfDropDown() {
    if (state.allKhodam == null) return [];
    List<DropdownModel> newDropdownList = [];
    for (int i = 0; i < state.allKhodam!.length; i++) {
      newDropdownList.add(DropdownModel(
          id: state.allKhodam![i].id,
          name: state.allKhodam![i].name,
          extratext: state.allKhodam![i].serveesCount.toString()));
    }
    state = state.copyWith(dropdownList: newDropdownList);
    return state.dropdownList!;
  }

  // GET Khadem
  Future<bool> getkhadem(BuildContext context) async {
    Either<Failure, ServantModel?> responcekhademmodel =
        await khademRepo.requestGetKhadem();
    printDone('response $responcekhademmodel');
    bool success = responcekhademmodel.fold(
      (Failure l) {
        printError(l.message);
        return false;
      },
      (ServantModel? r) {
        state = state.copyWith(allKhodam: r!.data);
        printDone('Get Khadem Now');
        createListOfDropDown();
        return true;
      },
    );

    if (!success) {
      printError('error');
    }
    return success;
  }
}
