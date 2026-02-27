import 'package:abosiefienapp/core/widgets/filter_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:abosiefienapp/core/theme/app_theme.dart';

class SearchSectionWidget extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final bool filtervisibility;
  final void Function()? searchonTap;

  const SearchSectionWidget({
    super.key,
    required this.controller,
    required this.filtervisibility,
    this.onChanged,
    this.searchonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: filtervisibility,
          child: IconButton.filledTonal(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Theme.of(context).colorScheme.surface,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(AppTheme.radiusXl),
                  ),
                ),
                builder: (context) => const FilterBottomSheetWidget(),
              );
            },
          ),
        ),
        10.horizontalSpace,
        Expanded(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SearchBar(
              controller: controller,
              onChanged: onChanged,
              hintText: 'ابحث هنا ..',
              leading: InkWell(
                onTap: searchonTap,
                child: const Icon(Icons.search_outlined),
              ),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.surfaceContainerLowest),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppTheme.radiusXl),
                side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
              )),
            ),
          ),
        ),
      ],
    );
  }
}