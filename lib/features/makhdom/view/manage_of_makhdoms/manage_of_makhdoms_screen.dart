import 'package:abosiefienapp/features/home/providers/home_screen_provider.dart';
import 'package:abosiefienapp/core/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:abosiefienapp/core/route/app_routes.dart';
import 'package:abosiefienapp/core/theme/app_theme.dart';

class ManageOfMakhdoms extends HookConsumerWidget {
  const ManageOfMakhdoms({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homescreenprovider = ref.watch(homeScreenNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('إدارة المخدومين'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        children: [
          if (homescreenprovider.hasaaddMakhdomPermission)
            Padding(
              padding: const EdgeInsets.only(bottom: AppTheme.spacingM),
              child: CardWidget(
                'إضافة المخدومين',
                () {
                  Navigator.pushNamed(context, AppRoutes.addMakhdomRouteName);
                },
                Icons.person_add_alt_1,
              ),
            ),
          if (homescreenprovider.hasaaddattendancePermission)
            CardWidget(
              'إضافة حضور',
              () {
                Navigator.pushNamed(
                    context, AppRoutes.addAttendanceRouteName);
              },
              Icons.person_add_alt_1,
            ),
        ],
      ),
    );
  }
}
