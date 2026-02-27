import 'dart:convert';

import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/features/auth/models/user_model.dart';
import 'package:dartz/dartz.dart';

import 'package:abosiefienapp/core/app_repository/repo.dart';
import 'package:abosiefienapp/core/errors/exceptions.dart';
import 'package:abosiefienapp/core/network/api_endpoints.dart';
import 'package:abosiefienapp/core/services/app_shared_prefrence.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class LoginRepo extends Repository {
  Future<Either<Failure, UserModel?>> requestLogin(
      String email, String password) async {
    return await exceptionHandler(
      () async {
        printWarning('Iam In Login Repo');
        final Map<String, dynamic> response = await dioHelper.getDataWithQuery(
          endPont: Endpoints.requestLogin,
          query: {"userName": email, "password": password},
        );
        if (response['success'] == true) {
          printWarning('token is $response');
          final userdata = UserModel.fromJson(response);

          await AppSharedPreferences.setString(
              SharedPreferencesKeys.accessToken, userdata.data!.token!);
          final userJson = jsonEncode(userdata.toJson());
          await AppSharedPreferences.setString(
              SharedPreferencesKeys.userModel, userJson);
          return userdata;
        }
        throw ServerException(exceptionMessage: response['msg']);
      },
    );
  }
}
