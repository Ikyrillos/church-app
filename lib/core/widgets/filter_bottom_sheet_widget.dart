import 'package:abosiefienapp/features/makhdom/providers/my_makhdoms_provider.dart';
import 'package:abosiefienapp/core/widgets/app_date_picker_widget.dart';
import 'package:abosiefienapp/core/widgets/arrange_section_widget.dart';
import 'package:abosiefienapp/core/widgets/multi_radio_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class FilterBottomSheetWidget extends ConsumerWidget {
  const FilterBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myMakhdomsState = ref.watch(myMakhdomsNotifierProvider);
    final myMakhdomsNotifier = ref.read(myMakhdomsNotifierProvider.notifier);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ── Header ───────────────────────────────────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ترتيب وفرز',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close, size: 26),
                  ),
                ],
              ),
              const Divider(thickness: 1),

              // ── Sort options ──────────────────────────────────────────────
              MultiRadioWidget(
                checkedIncome: false,
                radioValue: myMakhdomsState.sortValue,
                title1: 'ترتيب',
                title2: 'الإسم',
                title3: 'الشارع',
                title4: 'اخر حضور',
                title5: '',
                color: colorScheme.onSurface,
                onChanged: (value) {
                  myMakhdomsNotifier.setSelectedSortColumn(value);
                },
              ),
              const ArrangeSectionWidget(),
              const Divider(thickness: 1),

              // ── Filter section ────────────────────────────────────────────
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 40.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'فرز',
                      textDirection: TextDirection.rtl,
                      style: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'تاريخ الغياب',
                      textDirection: TextDirection.rtl,
                      style: textTheme.titleMedium,
                    ),
                    SizedBox(height: 12.h),
                    // ── Material 3 date picker trigger ──────────────────────
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon:
                            const Icon(Icons.calendar_today_rounded, size: 18),
                        label: Text(
                          myMakhdomsState.absentDate.isEmpty
                              ? 'اختر تاريخ الغياب'
                              : myMakhdomsState.absentDate,
                        ),
                        onPressed: () async {
                          final DateTime? selected =
                              await customShowDatePicker(context);
                          if (selected == null) return;
                          myMakhdomsNotifier.setSelectedAbsentDate(
                              intl.DateFormat('yyyy-MM-dd').format(selected));
                          printDone(
                              'ABSENT DATE Updated ${myMakhdomsState.absentDate}');
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
                    const Divider(thickness: 1),
                  ],
                ),
              ),

              // ── Action buttons ────────────────────────────────────────────
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        onPressed: () {
                          myMakhdomsNotifier.myMakhdoms(context).then((value) {
                            if (value == true) {
                              Navigator.pop(context);
                              myMakhdomsNotifier.clearFilterDate();
                            }
                          });
                        },
                        child: const Text('بحث'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    TextButton(
                      onPressed: () => myMakhdomsNotifier.clearFilterDate(),
                      child: const Text('مسح الكل'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
