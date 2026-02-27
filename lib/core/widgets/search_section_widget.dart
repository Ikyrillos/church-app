import 'package:abosiefienapp/core/widgets/filter_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:abosiefienapp/core/theme/app_styles_util.dart';

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
        //use expended if you are using textformfield in row
        Visibility(
          visible: filtervisibility,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: const Offset(5, 5))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.0))),
                      builder: (context) => const FilterBottomSheetWidget(),
                    );
                  },
                  child: const Icon(
                    Icons.sort,
                    color: Colors.black,
                    size: 26,
                  ),
                ),
              )),
        ),
        10.horizontalSpace,
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: const Offset(5, 5))
                ]),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                controller: controller,
                onChanged: onChanged,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'ابحث هنا ..',
                    hintStyle: AppStylesUtil.textRegularStyle(
                        16, Colors.black, FontWeight.normal),
                    prefixIcon: InkWell(
                      onTap: searchonTap,
                      child: const Icon(
                        Icons.search_outlined,
                        color: Colors.black,
                        // weight: 20,
                      ),
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
