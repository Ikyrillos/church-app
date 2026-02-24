import 'package:abosiefienapp/Providers/makhdom_details_provider.dart';
import 'package:abosiefienapp/model/mymakhdoms_model.dart';
import 'package:abosiefienapp/model/radio_button_model.dart';
import 'package:abosiefienapp/presentation/widgets/app_date_picker_widget.dart';
import 'package:abosiefienapp/presentation/widgets/gender.dart';
import 'package:abosiefienapp/presentation/widgets/input_form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/theming/app_styles_util.dart';
import '../../../core/utils/app_debug_prints.dart';

class MakhdomDetailsScreen extends HookConsumerWidget {
  final Data? makhdom;

  const MakhdomDetailsScreen({super.key, this.makhdom});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormState> formKey = useMemoized(() => GlobalKey<FormState>());
    
    // Initialize data once
    useEffect(() {
      Future.microtask(() {
        ref.read(makhdomDetailsNotifierProvider.notifier).setRecievedMakhdom(makhdom);
      });
      return null;
    }, []);

    final makhdomState = ref.watch(makhdomDetailsNotifierProvider);
    final notifier = ref.read(makhdomDetailsNotifierProvider.notifier);

    // Validation helpers (replicated from Validator extension)
    bool isValidName(String? text) {
      if (text == null || text.isEmpty) return false; // "isEmpty" logic from extension
      return RegExp(r"^(?=.*?[a-z A-Z]).{2,}$").hasMatch(text);
    }

    if (makhdomState == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "بيانات المخدوم",
          style: AppStylesUtil.textRegularStyle(
              20.0, Colors.black, FontWeight.w500),
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
            child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'كود المخـدوم :   ',
                        style: AppStylesUtil.textRegularStyle(
                            16, Colors.black, FontWeight.w500),
                      ),
                      Text(
                        makhdomState.id != 0
                            ? makhdomState.id.toString()
                            : 'لا يوجد',
                        style: AppStylesUtil.textRegularStyle(
                            16, Colors.black, FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                InputFieldWidget(
                  labeltext: 'الإسم',
                  initialvalue: makhdomState.name != 'null'
                      ? makhdomState.name
                      : '',
                  width: MediaQuery.of(context).size.width - 40,
                  keyboardType: TextInputType.text,
                  validation: isValidName(makhdomState.name),
                  lines: 1,
                  obscure: false,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    notifier.updateName(value);
                  },
                ),
                InputFieldWidget(
                    labeltext: 'التليفون',
                    initialvalue: makhdomState.phone != 'null'
                        ? makhdomState.phone
                        : '',
                    width: MediaQuery.of(context).size.width - 40,
                    keyboardType: TextInputType.number,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updatePhone(value);
                    }),
                InputFieldWidget(
                    labeltext: 'رقم تليفون اّخر',
                    initialvalue: makhdomState.phone2 != 'null'
                        ? makhdomState.phone2
                        : '',
                    width: MediaQuery.of(context).size.width - 40,
                    keyboardType: TextInputType.number,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updatePhone2(value);
                    }),
                GenderSelect(
                    checkedIncome: false,
                    radioValue: RadioButtonModel(makhdomState.genderId ?? 1, true),
                    title1: 'النوع',
                    title2: 'ذكر',
                    title3: 'انثى',
                    color: Colors.black,
                    onChanged: (value) {
                      printDone('in screen value $value');
                      notifier.updateGender(value);
                    }),
                InputFieldWidget(
                    labeltext: 'العنوان/رقم',
                    initialvalue: makhdomState.addNo.toString() != 'null'
                        ? makhdomState.addNo.toString()
                        : '',
                    width: MediaQuery.of(context).size.width - 40,
                    keyboardType: TextInputType.number,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updateAddNo(int.tryParse(value) ?? 0);
                    }),
                InputFieldWidget(
                    labeltext: 'العنوان/شارع',
                    initialvalue: makhdomState.addStreet.toString() != 'null'
                        ? makhdomState.addStreet.toString()
                        : '',
                    width: MediaQuery.of(context).size.width - 40,
                    keyboardType: TextInputType.text,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updateAddStreet(value);
                    }),
                InputFieldWidget(
                    labeltext: 'بجانب',
                    initialvalue: makhdomState.addBeside.toString() != 'null'
                        ? makhdomState.addBeside.toString()
                        : '',
                    width: MediaQuery.of(context).size.width - 40,
                    keyboardType: TextInputType.text,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updateAddBeside(value);
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
                      printWarning(
                          'OLD BIRTHDAY ${makhdomState.birthdate ?? ''}');
                      DateTime? selected =
                          await customShowDatePicker(context);
                      notifier.changeBirthdate(selected);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          makhdomState.birthdate == null
                              ? '2023/1/1'
                              : '${notifier.convertToDate(makhdomState.birthdate ?? '')}',
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
                    initialvalue: makhdomState.father.toString() != 'null'
                        ? makhdomState.father.toString()
                        : '',
                    width: MediaQuery.of(context).size.width - 40,
                    validation:
                        makhdomState.father != null && makhdomState.father!.isNotEmpty,
                    keyboardType: TextInputType.text,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updateFather(value);
                    }),
                InputFieldWidget(
                    labeltext: 'الجامعة',
                    initialvalue: makhdomState.university.toString() != 'null'
                        ? makhdomState.university.toString()
                        : '',
                    width: MediaQuery.of(context).size.width - 40,
                    validation: makhdomState.university != null && makhdomState.university!.isNotEmpty,
                    keyboardType: TextInputType.text,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updateUniversity(value);
                    }),
                InputFieldWidget(
                    labeltext: 'الكلية',
                    initialvalue: makhdomState.faculty.toString() != 'null'
                        ? makhdomState.faculty.toString()
                        : '',
                    width: MediaQuery.of(context).size.width - 40,
                    validation: makhdomState.faculty != null && makhdomState.faculty!.isNotEmpty,
                    keyboardType: TextInputType.text,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updateFaculty(value);
                    }),
                InputFieldWidget(
                    labeltext: 'السنة الدراسية',
                    initialvalue: makhdomState.studentYear.toString() ?? '',
                    width: MediaQuery.of(context).size.width - 40,
                    validation: makhdomState.studentYear != null,
                    keyboardType: TextInputType.number,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updateStudentYear(int.tryParse(value) ?? 0);
                    }),
                InputFieldWidget(
                    labeltext: 'الملاحظات',
                    initialvalue: makhdomState.notes.toString() != 'null'
                        ? makhdomState.notes.toString()
                        : '',
                    width: MediaQuery.of(context).size.width - 40,
                    validation: makhdomState.notes != null && makhdomState.notes!.isNotEmpty,
                    keyboardType: TextInputType.text,
                    lines: 4,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updateNotes(value);
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
                  child: Text('تعديل',
                      style: AppStylesUtil.textBoldStyle(
                          18, Colors.white, FontWeight.bold)),
                  onPressed: () {
                    // Logic already prints inside provider or here? 
                    // Let's call update directly
                    notifier.updateMyMakhdom(context, makhdomState);
                  },
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
