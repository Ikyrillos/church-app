import 'package:abosiefienapp/Providers/add_makhdom_provider.dart';
import 'package:abosiefienapp/core/utils/validator.dart';
import 'package:abosiefienapp/presentation/widgets/app_date_picker_widget.dart';
import 'package:abosiefienapp/presentation/widgets/custom_dropdown_widget.dart';
import 'package:abosiefienapp/presentation/widgets/gender.dart';
import 'package:abosiefienapp/presentation/widgets/input_form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theming/app_styles_util.dart';
import '../../../core/utils/app_debug_prints.dart';

class AddMakhdomScreen extends ConsumerStatefulWidget {
  const AddMakhdomScreen({super.key});

  @override
  _AddMakhdomScreenState createState() => _AddMakhdomScreenState();
}

class _AddMakhdomScreenState extends ConsumerState<AddMakhdomScreen> {
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    callGetKhademApi();
    super.initState();
  }

  Future<void> callGetKhademApi() async {
    Future.delayed(Duration.zero, () {
      ref.read(addMakhdomNotifierProvider.notifier).getkhadem(context).then((value) {
        printDone('Done $value');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(addMakhdomNotifierProvider);
      final addMakhdomProviderVar = ref.read(addMakhdomNotifierProvider.notifier);
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "بيانات المخدوم",
            style: AppStylesUtil.textRegularStyle(
                20.0, Colors.black, FontWeight.w500),
          ),
        ),
        body: Form(
          key: addMakhdomProviderVar.formKey,
          child: SingleChildScrollView(
              child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: CustomDropdownWidget(
                      labelText: 'اختر الخادم',
                      items: state.dropdownList,
                      value: state.selectedKhadem,
                      onChanged: (val) {
                        addMakhdomProviderVar.setSelectedKhadem(val ?? 2);
                        printDone(
                            'Selected Khadem updated ${state.selectedKhadem}');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InputFieldWidget(
                    labeltext: 'الإسم',
                    width: MediaQuery.of(context).size.width - 40,
                    controller: addMakhdomProviderVar.nameController,
                    keyboardType: TextInputType.text,
                    validation:
                        addMakhdomProviderVar.nameController.isValidName(),
                    validationText: 'يجب إدخال الإسم',
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      // makhdomdetailsprovider.recievedMakhdom!.name =
                      //     value ?? '';
                    },
                  ),
                  InputFieldWidget(
                      labeltext: 'التليفون',
                      width: MediaQuery.of(context).size.width - 40,
                      controller: addMakhdomProviderVar.phoneController,
                      keyboardType: TextInputType.number,
                      validation:
                          addMakhdomProviderVar.phoneController.isValidPhone(),
                      validationText: 'يجب إدخال رقم تليفون صحيح',
                      lines: 1,
                      obscure: false,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.phone =
                        //     value ?? '';
                      }),
                  InputFieldWidget(
                      labeltext: 'رقم تليفون اّخر',
                      width: MediaQuery.of(context).size.width - 40,
                      controller: addMakhdomProviderVar.phone2Controller,
                      keyboardType: TextInputType.number,
                      // validation:
                      //     addMakhdomProviderVar.phone2Controller.isValidPhone(),
                      // validationText: 'يجب إدخال رقم تليفون صحيح',
                      lines: 1,
                      obscure: false,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.phone2 =
                        //     value ?? '';
                      }),
                  GenderSelect(
                      checkedIncome: true,
                      radioValue: addMakhdomProviderVar.genderValue,
                      title1: 'النوع',
                      title2: 'ذكر',
                      title3: 'انثى',
                      color: Colors.black,
                      onChanged: (value) {
                        printDone('in screen value $value');
                        // makhdomdetailsprovider.recievedMakhdom!.genderId =
                        //     value;
                      }),
                  InputFieldWidget(
                      labeltext: 'العنوان/رقم',
                      width: MediaQuery.of(context).size.width - 40,
                      keyboardType: TextInputType.number,
                      lines: 1,
                      obscure: false,
                      textAlign: TextAlign.start,
                      controller: addMakhdomProviderVar.addressNumberController,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.addNo =
                        //     int.parse(value) ?? 0;
                        // _makhdomData['addNo'] = value ?? '';
                      }),
                  InputFieldWidget(
                      labeltext: 'العنوان/شارع',
                      width: MediaQuery.of(context).size.width - 40,
                      keyboardType: TextInputType.text,
                      lines: 1,
                      obscure: false,
                      textAlign: TextAlign.start,
                      controller: addMakhdomProviderVar.addressStreetController,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.addStreet =
                        //     value ?? '';
                        //  _makhdomData['addStreet'] = value ?? '';
                      }),
                  InputFieldWidget(
                      labeltext: 'بجانب',
                      width: MediaQuery.of(context).size.width - 40,
                      keyboardType: TextInputType.text,
                      lines: 1,
                      obscure: false,
                      textAlign: TextAlign.start,
                      controller: addMakhdomProviderVar.addressBesideController,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.addBeside =
                        //     value ?? '';
                        //  _makhdomData['addStreet'] = value ?? '';
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'تاريخ الميلاد',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.start,
                        style: AppStylesUtil.textRegularStyle(
                            14.sp, Colors.black, FontWeight.normal),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 40.h,
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      border: Border.all(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    child: InkWell(
                      onTap: () async {
                        DateTime? selected =
                            await customShowDatePicker(context);
                        addMakhdomProviderVar.changeBirthdate(selected);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.birthdate ?? '',
                            style: AppStylesUtil.textBoldStyle(
                              16.sp,
                              Colors.black,
                              FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.date_range,
                            color: Colors.blue,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  16.verticalSpace,
                  InputFieldWidget(
                      labeltext: 'أب الإعتراف',
                      width: MediaQuery.of(context).size.width - 40,
                      controller: addMakhdomProviderVar.fatherController,
                      validation:
                          addMakhdomProviderVar.fatherController.isEmpty(),
                      keyboardType: TextInputType.text,
                      lines: 1,
                      obscure: false,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.father =
                        //     value ?? '';
                        // _makhdomData['father'] = value ?? '';
                      }),
                  InputFieldWidget(
                      labeltext: 'الجامعة',
                      width: MediaQuery.of(context).size.width - 40,
                      controller: addMakhdomProviderVar.universityController,
                      // validation:
                      //     addMakhdomProviderVar.universityController.isEmpty(),
                      keyboardType: TextInputType.text,
                      lines: 1,
                      obscure: false,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.university =
                        //     value ?? '';
                        //  _makhdomData['university'] = value ?? '';
                      }),
                  InputFieldWidget(
                      labeltext: 'الكلية',
                      width: MediaQuery.of(context).size.width - 40,
                      controller: addMakhdomProviderVar.facultyController,
                      // validation:
                      //     addMakhdomProviderVar.facultyController.isEmpty(),
                      keyboardType: TextInputType.text,
                      lines: 1,
                      obscure: false,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.faculty =
                        //     value ?? '';
                        // _makhdomData['faculty'] = value ?? '';
                      }),
                  InputFieldWidget(
                      labeltext: 'السنة الدراسية',
                      width: MediaQuery.of(context).size.width - 40,
                      controller: addMakhdomProviderVar.studentYearController,
                      //validation: addMakhdomProviderVar.levelController.isEmpty(),
                      keyboardType: TextInputType.number,
                      lines: 1,
                      obscure: false,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.levelId =
                        //     int.parse(value) ?? 0;
                        // _makhdomData['studentYear'] = value ?? '';
                      }),
                  InputFieldWidget(
                      labeltext: 'الملاحظات',
                      width: MediaQuery.of(context).size.width - 40,
                      controller: addMakhdomProviderVar.notesController,
                      //validation: addMakhdomProviderVar.notesController.isEmpty(),
                      keyboardType: TextInputType.text,
                      lines: 4,
                      obscure: false,
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        // makhdomdetailsprovider.recievedMakhdom!.notes =
                        //     value ?? '';
                        // _makhdomData['notes'] = value ?? '';
                      }),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 40, 40),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    child: Text('إضافة',
                        style: AppStylesUtil.textBoldStyle(
                            18, Colors.white, FontWeight.bold)),
                    onPressed: () {
                      printDone(addMakhdomProviderVar.nameController.text);
                      printDone(addMakhdomProviderVar.phoneController.text);
                      printDone(addMakhdomProviderVar.phone2Controller.text);
                      printDone(addMakhdomProviderVar.genderValue.value);
                      printDone(
                          addMakhdomProviderVar.addressNumberController.text);
                      printDone(
                          addMakhdomProviderVar.addressStreetController.text);
                      printDone(
                          addMakhdomProviderVar.addressBesideController.text);
                      printDone(addMakhdomProviderVar.facultyController.text);
                      printDone(
                          addMakhdomProviderVar.universityController.text);
                      printDone(addMakhdomProviderVar.facultyController.text);
                      printDone(
                          addMakhdomProviderVar.studentYearController.text);
                      printDone(addMakhdomProviderVar.notesController.text);
                      addMakhdomProviderVar.validate(context);
                    },
                  ),
                ],
              ),
            ),
          )),
        ),
      );
    });
  }
}
