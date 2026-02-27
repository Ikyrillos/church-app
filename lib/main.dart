import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:abosiefienapp/core/network/dio_helper.dart';
import 'package:abosiefienapp/core/route/app_routes.dart';
import 'package:abosiefienapp/core/route/route_manager.dart';
import 'package:abosiefienapp/core/services/app_shared_prefrence.dart';
import 'package:abosiefienapp/core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSharedPreferences.init();
  DioHelper.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            builder: (context, child) {
              child = BotToastInit()(context, child);
              return Directionality(
                textDirection: TextDirection.rtl,
                child: child,
              );
            },
            navigatorObservers: [BotToastNavigatorObserver()],
            debugShowCheckedModeBanner: false,
            title: "App Siefien App",
            theme: AppTheme.lightTheme,
            home: const MyHomePage(title: ''),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child ?? const SizedBox(),
        );
      },
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppRouteManager.generateRoute,
      debugShowCheckedModeBanner: false,
      title: "رعية الله",
      initialRoute:
          AppSharedPreferences.getString(SharedPreferencesKeys.accessToken) !=
                  null
              ? AppRoutes.homeRouteName
              : AppRoutes.loginScreenRouteName,
    );
  }
}
