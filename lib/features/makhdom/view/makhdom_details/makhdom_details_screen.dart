import 'package:abosiefienapp/features/makhdom/providers/makhdom_details_provider.dart';
import 'package:abosiefienapp/features/makhdom/models/my_servees_model.dart';
import 'package:abosiefienapp/core/models/radio_button_model.dart';
import 'package:abosiefienapp/core/widgets/app_date_picker_widget.dart';
import 'package:abosiefienapp/core/widgets/gender.dart';
import 'package:abosiefienapp/core/widgets/input_form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class MakhdomDetailsScreen extends HookConsumerWidget {
  final MyServeesData? makhdom;

  const MakhdomDetailsScreen({super.key, this.makhdom});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormState> formKey =
        useMemoized(() => GlobalKey<FormState>());

    // Initialize data once
    useEffect(() {
      Future.microtask(() {
        ref
            .read(makhdomDetailsNotifierProvider.notifier)
            .setRecievedMakhdom(makhdom);
      });
      return null;
    }, []);

    final makhdomState = ref.watch(makhdomDetailsNotifierProvider);
    final notifier = ref.read(makhdomDetailsNotifierProvider.notifier);

    // Validation helpers (replicated from Validator extension)
    bool isValidName(String? text) {
      if (text == null || text.isEmpty)
        return false; // "isEmpty" logic from extension
      return RegExp(r"^(?=.*?[a-z A-Z]).{2,}$").hasMatch(text);
    }

    if (makhdomState == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("بيانات المخدوم"),
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
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        makhdomState.id != 0
                            ? makhdomState.id.toString()
                            : 'لا يوجد',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                InputFieldWidget(
                  labeltext: 'الإسم',
                  initialvalue:
                      makhdomState.name != 'null' ? makhdomState.name : '',
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
                    initialvalue:
                        makhdomState.phone != 'null' ? makhdomState.phone : '',
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
                    radioValue:
                        RadioButtonModel(makhdomState.genderId ?? 1, true),
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
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.calendar_today_rounded, size: 18),
                    label: Text(
                      makhdomState.birthdate == null
                          ? '2023/1/1'
                          : '${notifier.convertToDate(makhdomState.birthdate ?? '')}',
                    ),
                    onPressed: () async {
                      printWarning(
                          'OLD BIRTHDAY ${makhdomState.birthdate ?? ''}');
                      final DateTime? selected = await customShowDatePicker(
                        context,
                        firstDate: DateTime(1950),
                      );
                      notifier.changeBirthdate(selected);
                    },
                    style: OutlinedButton.styleFrom(
                      alignment: AlignmentDirectional.centerStart,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
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
                    validation: makhdomState.father != null &&
                        makhdomState.father!.isNotEmpty,
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
                    validation: makhdomState.university != null &&
                        makhdomState.university!.isNotEmpty,
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
                    validation: makhdomState.faculty != null &&
                        makhdomState.faculty!.isNotEmpty,
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
                    validation: makhdomState.notes != null &&
                        makhdomState.notes!.isNotEmpty,
                    keyboardType: TextInputType.text,
                    lines: 4,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      notifier.updateNotes(value);
                    }),
                const SizedBox(height: 20),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 40, 48),
                  ),
                  onPressed: () {
                    notifier.updateMyMakhdom(context, makhdomState);
                  },
                  child: const Text('تعديل'),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
