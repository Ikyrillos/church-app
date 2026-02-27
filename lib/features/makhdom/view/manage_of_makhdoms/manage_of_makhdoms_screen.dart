import 'package:abosiefienapp/features/home/providers/home_screen_provider.dart';
import 'package:abosiefienapp/core/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:abosiefienapp/core/route/app_routes.dart';
import 'package:abosiefienapp/core/theme/app_styles_util.dart';

class ManageOfMakhdoms extends StatelessWidget {
  const ManageOfMakhdoms({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final homescreenprovider = ref.watch(homeScreenNotifierProvider);
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'إدارة المخدومين',
            style:
                AppStylesUtil.textBoldStyle(22, Colors.black, FontWeight.w500),
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Visibility(
                visible: homescreenprovider.hasaaddMakhdomPermission,
                child: CardWidget(
                  'إضافة المخدومين',
                  () {
                    Navigator.pushNamed(context, AppRoutes.addMakhdomRouteName);
                  },
                  Icons.person_add_alt_1,
                ),
              ),
              Visibility(
                visible: homescreenprovider.hasaaddattendancePermission,
                child: CardWidget(
                  'إضافة حضور',
                  () {
                    Navigator.pushNamed(
                        context, AppRoutes.addAttendanceRouteName);
                  },
                  Icons.person_add_alt_1,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
