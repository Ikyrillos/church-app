import 'package:abosiefienapp/features/auth/providers/login_provider.dart';
import 'package:abosiefienapp/features/auth/view/widget/auth_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:abosiefienapp/core/app_assets/app_assets_util.dart';
import 'package:abosiefienapp/core/theme/app_theme.dart';

enum AuthMode { Signup, Login }

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(loginNotifierProvider.notifier).getAPKVersion();
      });
      return null;
    }, const []);

    final deviceSize = MediaQuery.of(context).size;
    var loginState = ref.watch(loginNotifierProvider);
    
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Text(
          'V ${loginState.version}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppTheme.spacingM, vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 260.h,
                child: Center(
                  child: Image.asset(
                    AppAssets.logoImage,
                    fit: BoxFit.contain,
                    width: deviceSize.width * 0.75,
                    height: 260.h,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'ارْعَوْا رَعِيَّةَ اللهِ الَّتِي بَيْنَكُمْ',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '1 بط 5: 2',
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const AuthCard(),
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
