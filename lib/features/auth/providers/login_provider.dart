import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/extension_method/extension_navigation.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/features/auth/models/user_model.dart';
import 'package:abosiefienapp/features/auth/repository/login_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:abosiefienapp/core/route/app_routes.dart';
import 'package:abosiefienapp/core/services/app_shared_prefrence.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

part 'login_provider.g.dart';

class LoginState {
  final UserModel? user;
  final String version;

  LoginState({this.user, this.version = ''});

  LoginState copyWith({
    UserModel? user,
    String? version,
  }) {
    return LoginState(
      user: user ?? this.user,
      version: version ?? this.version,
    );
  }
}

@Riverpod(keepAlive: true)
class LoginNotifier extends _$LoginNotifier {
  LoginRepo loginRepo = LoginRepo();
  CustomFunctions customFunctions = CustomFunctions();

  @override
  LoginState build() {
    return LoginState();
  }

  void setUser(UserModel user) {
    state = state.copyWith(user: user);
  }

  UserModel? get user => state.user;

  Future<bool?> login(
      String username, String password, BuildContext context) async {
    try {
      printWarning('username $username');
      printWarning('password $password');
      customFunctions.showProgress(context);

      final Either<Failure, UserModel?> response =
          await loginRepo.requestLogin(username, password);

      response.fold(
        (Failure failure) {
          printError(failure.message);
          customFunctions.showError(message: failure.message, context: context);
          return false;
        },
        (UserModel? user) {
          if (user != null) {
            _storeUserToken(user.data?.token);
            customFunctions.hideProgress();
            context.pushNamedAndRemoveUntil(
              AppRoutes.homeRouteName,
              predicate: (route) => false,
            );
            return true;
          } else {
            printError('Login failed: UserModel is null');
            customFunctions.showError(
                message: 'Login failed. Please try again.', context: context);
            return false;
          }
        },
      );
    } finally {
      customFunctions.hideProgress();
    }
    return null;
  }

  Future<void> _storeUserToken(String? token) async {
    if (token != null && token.isNotEmpty) {
      await AppSharedPreferences.setString(
          SharedPreferencesKeys.accessToken, token);
      printInfo('SET API TOKEN NOW');
      printDone(
          AppSharedPreferences.getString(SharedPreferencesKeys.accessToken)
              .toString());
    } else {
      printWarning('Token is null or empty');
    }
  }

  Future<void> getAPKVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    state = state.copyWith(version: packageInfo.version);
    printWarning('version ${state.version}');
  }
}
