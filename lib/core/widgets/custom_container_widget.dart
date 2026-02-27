import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:abosiefienapp/core/theme/app_styles_util.dart';

class CustomContainerWidget extends StatelessWidget {
  final double? height;
  final Widget child;
  final String headline;
  final Color? bgColor;
  final bool isImage;
  final double? bottomMargin;

  const CustomContainerWidget(
      {super.key,
      this.height,
      required this.child,
      required this.headline,
      this.bgColor,
      this.isImage = false,
      this.bottomMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: Colors.lightBlue.shade50,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: Colors.lightBlue.shade200,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(headline,
              style: AppStylesUtil.textBoldStyle(
                  18, Colors.black, FontWeight.bold)),
          child
        ],
      ),
    );
  }
}
