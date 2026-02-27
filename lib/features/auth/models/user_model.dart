import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    UserData? data,
    @Default('') String code,
    @Default('') String errorMsg,
    @Default(0) int count,
    @Default(0) int pageNo,
    @Default(false) bool success,
    @Default([]) List<String> listData,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @Default(0) int userId,
    @JsonKey(name: 'khademId') @Default(0) int servantId,
    @Default('') String userName,
    @Default(false) bool isActive,
    @Default(0) int roleId,
    @Default('') String roleName,
    @Default('') String token,
    @Default(0) int levelId,
    @Default([]) List<Permissions> permissions,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}

@freezed
class Permissions with _$Permissions {
  const factory Permissions({
    @Default('') String permissionName,
  }) = _Permissions;

  factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);
}
