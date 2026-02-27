import 'package:freezed_annotation/freezed_annotation.dart';

part 'servee_update_model.freezed.dart';
part 'servee_update_model.g.dart';

@freezed
class ServeeUpdateModel with _$ServeeUpdateModel {
  const factory ServeeUpdateModel({
    @Default('') String code,
    @Default('') String errorMsg,
    ServeeUpdateData? data,
    @Default(0) int count,
    @Default(0) int pageNo,
    @Default(false) bool success,
    @Default([]) List<String> listData,
  }) = _ServeeUpdateModel;

  factory ServeeUpdateModel.fromJson(Map<String, dynamic> json) => _$ServeeUpdateModelFromJson(json);
}

@freezed
class ServeeUpdateData with _$ServeeUpdateData {
  const factory ServeeUpdateData({
    int? id,
    String? name,
    String? phone,
    String? phone2,
    String? adress,
    String? birthdate,
    int? addNo,
    String? addStreet,
    int? addFloor,
    String? addBeside,
    String? father,
    String? university,
    String? faculty,
    int? studentYear,
    @JsonKey(name: 'khademId') int? servantId,
    int? groupId,
    String? notes,
    int? levelId,
    int? oldId,
    int? genderId,
    String? job,
    int? socialId,
    List<Attendances>? attendances,
    Gender? gender,
    Group? group,
    @JsonKey(name: 'khadem') ServantDetails? servant,
    Gender? social,
    List<UserPoints>? userPoints,
  }) = _ServeeUpdateData;

  factory ServeeUpdateData.fromJson(Map<String, dynamic> json) => _$ServeeUpdateDataFromJson(json);
}

@freezed
class Attendances with _$Attendances {
  const factory Attendances({
    int? attId,
    @JsonKey(name: 'makhdomeId') int? serveeId,
    String? date,
    Time? time,
    @JsonKey(name: 'makhdome') String? servee,
  }) = _Attendances;

  factory Attendances.fromJson(Map<String, dynamic> json) => _$AttendancesFromJson(json);
}

@freezed
class Time with _$Time {
  const factory Time({
    int? ticks,
    int? days,
    int? hours,
    int? milliseconds,
    int? microseconds,
    int? nanoseconds,
    int? minutes,
    int? seconds,
    int? totalDays,
    int? totalHours,
    int? totalMilliseconds,
    int? totalMicroseconds,
    int? totalNanoseconds,
    int? totalMinutes,
    int? totalSeconds,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}

@freezed
class Gender with _$Gender {
  const factory Gender({
    int? id,
    String? name,
    @JsonKey(name: 'makhdoms') List<String>? servees,
  }) = _Gender;

  factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);
}

@freezed
class Group with _$Group {
  const factory Group({
    int? groupId,
    String? groupName,
    @JsonKey(name: 'khadems') List<ServantDetails>? servants,
    @JsonKey(name: 'makhdoms') List<String>? servees,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@freezed
class ServantDetails with _$ServantDetails {
  const factory ServantDetails({
    int? id,
    String? name,
    String? phone1,
    String? phone2,
    String? adress,
    String? image,
    int? groupId,
    String? birthDate,
    int? levelId,
    List<Eftkads>? eftkads,
    String? group,
    @JsonKey(name: 'makhdoms') List<String>? servees,
    List<Users>? users,
  }) = _ServantDetails;

  factory ServantDetails.fromJson(Map<String, dynamic> json) => _$ServantDetailsFromJson(json);
}

@freezed
class Eftkads with _$Eftkads {
  const factory Eftkads({
    int? id,
    String? eftkadDate,
    @JsonKey(name: 'makhdomId') int? serveeId,
    @JsonKey(name: 'khademId') int? servantId,
    int? eftkadStatues,
    EftkadStatuesNavigation? eftkadStatuesNavigation,
    @JsonKey(name: 'khadem') String? servant,
  }) = _Eftkads;

  factory Eftkads.fromJson(Map<String, dynamic> json) => _$EftkadsFromJson(json);
}

@freezed
class EftkadStatuesNavigation with _$EftkadStatuesNavigation {
  const factory EftkadStatuesNavigation({
    int? id,
    String? code,
    String? value,
    List<String>? eftkads,
  }) = _EftkadStatuesNavigation;

  factory EftkadStatuesNavigation.fromJson(Map<String, dynamic> json) => _$EftkadStatuesNavigationFromJson(json);
}

@freezed
class Users with _$Users {
  const factory Users({
    int? userId,
    @JsonKey(name: 'khademId') int? servantId,
    String? userName,
    String? password,
    String? userRole,
    bool? isActive,
    int? roleId,
    int? levelId,
    @JsonKey(name: 'khadem') String? servant,
    Level? level,
    Role? role,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}

@freezed
class Level with _$Level {
  const factory Level({
    int? id,
    String? levelName,
    List<String>? users,
  }) = _Level;

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({
    int? id,
    String? roleName,
    List<RolePermissions>? rolePermissions,
    List<String>? users,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
class RolePermissions with _$RolePermissions {
  const factory RolePermissions({
    int? id,
    int? roleId,
    int? permissionId,
    Permission? permission,
    String? role,
  }) = _RolePermissions;

  factory RolePermissions.fromJson(Map<String, dynamic> json) => _$RolePermissionsFromJson(json);
}

@freezed
class Permission with _$Permission {
  const factory Permission({
    int? id,
    String? permissionName,
    String? permissionCategory,
    List<String>? rolePermissions,
  }) = _Permission;

  factory Permission.fromJson(Map<String, dynamic> json) => _$PermissionFromJson(json);
}

@freezed
class UserPoints with _$UserPoints {
  const factory UserPoints({
    int? id,
    @JsonKey(name: 'makhdomId') int? serveeId,
    int? levelId,
    int? points,
    String? creationData,
    String? updatedDate,
    @JsonKey(name: 'makhdom') String? servee,
  }) = _UserPoints;

  factory UserPoints.fromJson(Map<String, dynamic> json) => _$UserPointsFromJson(json);
}
