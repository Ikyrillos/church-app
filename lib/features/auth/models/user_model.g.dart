// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as String? ?? '',
      errorMsg: json['errorMsg'] as String? ?? '',
      count: (json['count'] as num?)?.toInt() ?? 0,
      pageNo: (json['pageNo'] as num?)?.toInt() ?? 0,
      success: json['success'] as bool? ?? false,
      listData: (json['listData'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'code': instance.code,
      'errorMsg': instance.errorMsg,
      'count': instance.count,
      'pageNo': instance.pageNo,
      'success': instance.success,
      'listData': instance.listData,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      servantId: (json['khademId'] as num?)?.toInt() ?? 0,
      userName: json['userName'] as String? ?? '',
      isActive: json['isActive'] as bool? ?? false,
      roleId: (json['roleId'] as num?)?.toInt() ?? 0,
      roleName: json['roleName'] as String? ?? '',
      token: json['token'] as String? ?? '',
      levelId: (json['levelId'] as num?)?.toInt() ?? 0,
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => Permissions.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'khademId': instance.servantId,
      'userName': instance.userName,
      'isActive': instance.isActive,
      'roleId': instance.roleId,
      'roleName': instance.roleName,
      'token': instance.token,
      'levelId': instance.levelId,
      'permissions': instance.permissions,
    };

_$PermissionsImpl _$$PermissionsImplFromJson(Map<String, dynamic> json) =>
    _$PermissionsImpl(
      permissionName: json['permissionName'] as String? ?? '',
    );

Map<String, dynamic> _$$PermissionsImplToJson(_$PermissionsImpl instance) =>
    <String, dynamic>{
      'permissionName': instance.permissionName,
    };
