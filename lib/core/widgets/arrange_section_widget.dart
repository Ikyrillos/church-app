import 'package:abosiefienapp/features/makhdom/providers/my_makhdoms_provider.dart';
import 'package:abosiefienapp/core/models/dropdown_model.dart';
import 'package:abosiefienapp/core/widgets/custom_container_widget.dart';
import 'package:abosiefienapp/core/widgets/custom_dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class ArrangeSectionWidget extends ConsumerWidget {
  const ArrangeSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myMakhdomsState = ref.watch(myMakhdomsNotifierProvider);
    final myMakhdomsNotifier = ref.read(myMakhdomsNotifierProvider.notifier);
    printError('my ${myMakhdomsState.sortValue.value}');
    return CustomContainerWidget(
        headline: 'رتب حسب',
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: SizedBox(
              height: 100.h,
              child: CustomDropdownWidget(
                hintText: 'رتب حسب',
                items: [
                  DropdownModel(id: 1, name: 'تصاعدى'),
                  DropdownModel(id: 2, name: 'تنازلى'),
                ],
                value: myMakhdomsState.sortDirection,
                onChanged: (val) {
                  myMakhdomsNotifier.setSelectedSortDir(val ?? 1);

                  printDone(
                      'Sort Direction updated ${myMakhdomsState.sortDirection}');
                },
              ),
            )),
          ],
        ));
  }
}
