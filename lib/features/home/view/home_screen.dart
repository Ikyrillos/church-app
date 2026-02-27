import 'package:abosiefienapp/features/home/providers/home_screen_provider.dart';
import 'package:abosiefienapp/core/extension_method/extension_navigation.dart';
import 'package:abosiefienapp/core/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:abosiefienapp/core/route/app_routes.dart';
import 'package:abosiefienapp/core/services/app_shared_prefrence.dart';
import 'package:abosiefienapp/core/theme/app_theme.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(homeScreenNotifierProvider.notifier).getStoredUser(context);
      });
      return null;
    }, const []);

    final homescreenprovider = ref.watch(homeScreenNotifierProvider);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "برنامج المخدومين",
            textDirection: TextDirection.rtl,
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () async {
                  AppSharedPreferences.clear();
                  context.pushNamedAndRemoveUntil(
                      AppRoutes.loginScreenRouteName,
                      predicate: (route) => false);
                })
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(AppTheme.spacingM),
          children: [
            if (homescreenprovider.hasGetMakhdomsPermission)
              Padding(
                padding: const EdgeInsets.only(bottom: AppTheme.spacingM),
                child: CardWidget(
                  "سجل المخدومين",
                  () {
                    Navigator.pushNamed(
                        context, AppRoutes.historyOfMakhdomsRouteName);
                  },
                  Icons.person,
                ),
              ),
            if (homescreenprovider.hasManageMakhdomsPermission)
              CardWidget(
                "إدارة المخدومين",
                () {
                  context.pushNamed(
                    routeName: AppRoutes.manageOfMakhdomsRouteName,
                  );
                },
                Icons.person_pin_sharp,
              ),
          ],
        ),
      ),
    );
  }
}
