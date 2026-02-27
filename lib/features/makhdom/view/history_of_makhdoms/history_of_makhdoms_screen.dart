import 'package:abosiefienapp/features/home/providers/home_screen_provider.dart';
import 'package:abosiefienapp/core/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:abosiefienapp/core/route/app_routes.dart';
import 'package:abosiefienapp/core/theme/app_styles_util.dart';

class HistoryOfMakhdomsScreen extends StatelessWidget {
  const HistoryOfMakhdomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final homeScreenProviderVar = ref.watch(homeScreenNotifierProvider);
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "المخدومين",
            style:
                AppStylesUtil.textBoldStyle(22, Colors.black, FontWeight.w500),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(14),
          width: double.infinity,
          child: Column(
            children: [
              CardWidget(
                "مخدومينى",
                () {
                  Navigator.pushNamed(context, AppRoutes.myMakhdomsRouteName);
                },
                Icons.person_search,
              ),
              Visibility(
                visible: homeScreenProviderVar.hasaddclassattendancePermission,
                child: CardWidget(
                  "إضافة حضور",
                  () {
                    Navigator.pushNamed(
                        context, AppRoutes.addClassAttendanceRouteName);
                  },
                  Icons.edit,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
