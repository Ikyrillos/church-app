import 'package:abosiefienapp/features/makhdom/providers/add_makhdom_provider.dart';
import 'package:abosiefienapp/core/utils/validator.dart';
import 'package:abosiefienapp/core/widgets/app_date_picker_widget.dart';
import 'package:abosiefienapp/core/widgets/custom_dropdown_widget.dart';
import 'package:abosiefienapp/core/widgets/gender.dart';
import 'package:abosiefienapp/core/widgets/input_form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:abosiefienapp/core/theme/app_theme.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class AddMakhdomScreen extends HookConsumerWidget {
  const AddMakhdomScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusNode = useFocusNode();
    final isSubmitting = useState(false);

    useEffect(() {
      Future.microtask(() =>
          ref.read(addMakhdomNotifierProvider.notifier).getkhadem(context));
      return null;
    }, const []);

    final state = ref.watch(addMakhdomNotifierProvider);
    final addMakhdomProviderVar = ref.read(addMakhdomNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("بيانات المخدوم"),
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
                SizedBox(height: 16.h),
                InputFieldWidget(
                  labeltext: 'الإسم',
                  width: MediaQuery.of(context).size.width - 40,
                  controller: addMakhdomProviderVar.nameController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validation:
                      addMakhdomProviderVar.nameController.isValidName(),
                  validationText: 'يجب إدخال الإسم',
                  lines: 1,
                  obscure: false,
                  textAlign: TextAlign.start,
                  onChanged: (value) {},
                ),
                InputFieldWidget(
                    labeltext: 'التليفون',
                    width: MediaQuery.of(context).size.width - 40,
                    controller: addMakhdomProviderVar.phoneController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    validation:
                        addMakhdomProviderVar.phoneController.isValidPhone(),
                    validationText: 'يجب إدخال رقم تليفون صحيح',
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {}),
                InputFieldWidget(
                    labeltext: 'رقم تليفون اّخر',
                    width: MediaQuery.of(context).size.width - 40,
                    controller: addMakhdomProviderVar.phone2Controller,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {}),
                GenderSelect(
                    checkedIncome: true,
                    radioValue: addMakhdomProviderVar.genderValue,
                    title1: 'النوع',
                    title2: 'ذكر',
                    title3: 'انثى',
                    color: Theme.of(context).colorScheme.onSurface,
                    onChanged: (value) {
                      printDone('in screen value $value');
                    }),
                InputFieldWidget(
                    labeltext: 'العنوان/رقم',
                    width: MediaQuery.of(context).size.width - 40,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    controller: addMakhdomProviderVar.addressNumberController,
                    onChanged: (value) {}),
                InputFieldWidget(
                    labeltext: 'العنوان/شارع',
                    width: MediaQuery.of(context).size.width - 40,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    controller: addMakhdomProviderVar.addressStreetController,
                    onChanged: (value) {}),
                InputFieldWidget(
                    labeltext: 'بجانب',
                    width: MediaQuery.of(context).size.width - 40,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    controller: addMakhdomProviderVar.addressBesideController,
                    onChanged: (value) {}),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                SizedBox(height: AppTheme.spacingS),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.calendar_today),
                    label: Text(
                      state.birthdate ?? 'اختر تاريخ الميلاد',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    onPressed: () async {
                      DateTime? selected = await customShowDatePicker(
                        context,
                        firstDate: DateTime(1950),
                      );
                      addMakhdomProviderVar.changeBirthdate(selected);
                    },
                    style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppTheme.spacingM,
                          vertical: AppTheme.spacingM),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppTheme.radiusM),
                      ),
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
                    textInputAction: TextInputAction.next,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {}),
                InputFieldWidget(
                    labeltext: 'الجامعة',
                    width: MediaQuery.of(context).size.width - 40,
                    controller: addMakhdomProviderVar.universityController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {}),
                InputFieldWidget(
                    labeltext: 'الكلية',
                    width: MediaQuery.of(context).size.width - 40,
                    controller: addMakhdomProviderVar.facultyController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {}),
                InputFieldWidget(
                    labeltext: 'السنة الدراسية',
                    width: MediaQuery.of(context).size.width - 40,
                    controller: addMakhdomProviderVar.studentYearController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {}),
                InputFieldWidget(
                    labeltext: 'الملاحظات',
                    width: MediaQuery.of(context).size.width - 40,
                    controller: addMakhdomProviderVar.notesController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    lines: 4,
                    obscure: false,
                    textAlign: TextAlign.start,
                    onChanged: (value) {}),
                const SizedBox(height: 20),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 40, 48),
                  ),
                  onPressed: isSubmitting.value
                      ? null
                      : () async {
                          printDone(addMakhdomProviderVar.nameController.text);
                          isSubmitting.value = true;
                          try {
                            addMakhdomProviderVar.validate(context);
                          } finally {
                            if (context.mounted) {
                              isSubmitting.value = false;
                            }
                          }
                        },
                  child: isSubmitting.value
                      ? const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(strokeWidth: 2))
                      : const Text('إضافة'),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
