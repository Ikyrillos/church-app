import 'dart:convert';
import 'package:abosiefienapp/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/shared_prefrence/app_shared_prefrence.dart';
import '../core/utils/app_debug_prints.dart';

part 'home_screen_provider.g.dart';

class HomeScreenState {
  final UserModel? user;
  final List<String> permisions;
  final bool hasGetMakhdomsPermission;
  final bool hasManageMakhdomsPermission;
  final bool hasaddclassattendancePermission;
  final bool hasaaddattendancePermission;
  final bool hasaaddMakhdomPermission;
  final bool hasUpdateMakhdomsPermission;

  HomeScreenState({
    this.user,
    this.permisions = const [],
    this.hasGetMakhdomsPermission = false,
    this.hasManageMakhdomsPermission = false,
    this.hasaddclassattendancePermission = false,
    this.hasaaddattendancePermission = false,
    this.hasaaddMakhdomPermission = false,
    this.hasUpdateMakhdomsPermission = false,
  });

  HomeScreenState copyWith({
    UserModel? user,
    List<String>? permisions,
    bool? hasGetMakhdomsPermission,
    bool? hasManageMakhdomsPermission,
    bool? hasaddclassattendancePermission,
    bool? hasaaddattendancePermission,
    bool? hasaaddMakhdomPermission,
    bool? hasUpdateMakhdomsPermission,
  }) {
    return HomeScreenState(
      user: user ?? this.user,
      permisions: permisions ?? this.permisions,
      hasGetMakhdomsPermission:
          hasGetMakhdomsPermission ?? this.hasGetMakhdomsPermission,
      hasManageMakhdomsPermission:
          hasManageMakhdomsPermission ?? this.hasManageMakhdomsPermission,
      hasaddclassattendancePermission: hasaddclassattendancePermission ??
          this.hasaddclassattendancePermission,
      hasaaddattendancePermission:
          hasaaddattendancePermission ?? this.hasaaddattendancePermission,
      hasaaddMakhdomPermission:
          hasaaddMakhdomPermission ?? this.hasaaddMakhdomPermission,
      hasUpdateMakhdomsPermission:
          hasUpdateMakhdomsPermission ?? this.hasUpdateMakhdomsPermission,
    );
  }
}

@Riverpod(keepAlive: true)
class HomeScreenNotifier extends _$HomeScreenNotifier {
  @override
  HomeScreenState build() {
    return HomeScreenState();
  }

  void getStoredUser(BuildContext context) async {
    final userJson =
        AppSharedPreferences.getString(SharedPreferencesKeys.userModel);

    if (userJson != null && userJson.isNotEmpty) {
      try {
        final userMap = jsonDecode(userJson);

        if (userMap is Map<String, dynamic>) {
          state = state.copyWith(user: UserModel.fromJson(userMap));
          print('user data for ${state.user?.data?.levelId}');

          getPermisions();
        } else {
          printError('Retrieved data is not a valid JSON object.');
        }
      } catch (e) {
        printError('Failed to parse user data: $e');
      }
    } else {
      printWarning('No user data found in SharedPreferences.');
    }
  }

  List<String> getPermisions() {
    if (state.user != null &&
        state.user!.data != null &&
        state.user!.data!.permissions != null) {
      List<String> newPermisions = [];
      bool getMakhdoms = false;
      bool manageMakhdoms = false;
      bool addClassAttendance = false;
      bool addAttendance = false;
      bool addMakhdom = false;
      bool updateMakhdoms = false;

      for (int i = 0; i < state.user!.data!.permissions!.length; i++) {
        String permissionName =
            state.user!.data!.permissions![i].permissionName.toString();

        if (permissionName == 'getmakhdoms') {
          getMakhdoms = true;
        } else if (permissionName == 'mangemakhdoms') {
          manageMakhdoms = true;
        } else if (permissionName == 'add_classattendance') {
          addClassAttendance = true;
        } else if (permissionName == 'add_attendance') {
          addAttendance = true;
        } else if (permissionName == 'add_makhdom') {
          addMakhdom = true;
        } else if (permissionName == 'updatemakdoms') {
          updateMakhdoms = true;
        }

        newPermisions.add(permissionName);
      }

      state = state.copyWith(
        permisions: newPermisions,
        hasGetMakhdomsPermission: getMakhdoms,
        hasManageMakhdomsPermission: manageMakhdoms,
        hasaddclassattendancePermission: addClassAttendance,
        hasaaddattendancePermission: addAttendance,
        hasaaddMakhdomPermission: addMakhdom,
        hasUpdateMakhdomsPermission: updateMakhdoms,
      );
    }
    return state.permisions;
  }
}
