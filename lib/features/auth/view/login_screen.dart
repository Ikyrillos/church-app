import 'package:abosiefienapp/features/auth/providers/login_provider.dart';
import 'package:abosiefienapp/features/auth/view/widget/auth_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:abosiefienapp/core/app_assets/app_assets_util.dart';
import 'package:abosiefienapp/core/theme/app_styles_util.dart';

enum AuthMode { Signup, Login }

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(loginNotifierProvider.notifier).getAPKVersion();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    var loginState = ref.watch(loginNotifierProvider);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Text(
          'V ${loginState.version}',
          textAlign: TextAlign.center,
          style:
              AppStylesUtil.textRegularStyle(14, Colors.grey, FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 260,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Image.asset(
                    AppAssets.logoImage,
                    fit: BoxFit.fitWidth,
                    width: deviceSize.width * 0.75,
                    height: 260.0,
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
                      style: AppStylesUtil.textBoldStyle(
                          18.0, Colors.black, FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '1 بط 5: 2',
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: AppStylesUtil.textBoldStyle(
                          18.0, Colors.black, FontWeight.bold),
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
