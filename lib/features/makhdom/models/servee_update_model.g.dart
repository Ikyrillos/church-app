// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servee_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServeeUpdateModelImpl _$$ServeeUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServeeUpdateModelImpl(
      code: json['code'] as String? ?? '',
      errorMsg: json['errorMsg'] as String? ?? '',
      data: json['data'] == null
          ? null
          : ServeeUpdateData.fromJson(json['data'] as Map<String, dynamic>),
      count: (json['count'] as num?)?.toInt() ?? 0,
      pageNo: (json['pageNo'] as num?)?.toInt() ?? 0,
      success: json['success'] as bool? ?? false,
      listData: (json['listData'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ServeeUpdateModelImplToJson(
        _$ServeeUpdateModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'errorMsg': instance.errorMsg,
      'data': instance.data,
      'count': instance.count,
      'pageNo': instance.pageNo,
      'success': instance.success,
      'listData': instance.listData,
    };

_$ServeeUpdateDataImpl _$$ServeeUpdateDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ServeeUpdateDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      phone2: json['phone2'] as String?,
      adress: json['adress'] as String?,
      birthdate: json['birthdate'] as String?,
      addNo: (json['addNo'] as num?)?.toInt(),
      addStreet: json['addStreet'] as String?,
      addFloor: (json['addFloor'] as num?)?.toInt(),
      addBeside: json['addBeside'] as String?,
      father: json['father'] as String?,
      university: json['university'] as String?,
      faculty: json['faculty'] as String?,
      studentYear: (json['studentYear'] as num?)?.toInt(),
      servantId: (json['khademId'] as num?)?.toInt(),
      groupId: (json['groupId'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      levelId: (json['levelId'] as num?)?.toInt(),
      oldId: (json['oldId'] as num?)?.toInt(),
      genderId: (json['genderId'] as num?)?.toInt(),
      job: json['job'] as String?,
      socialId: (json['socialId'] as num?)?.toInt(),
      attendances: (json['attendances'] as List<dynamic>?)
          ?.map((e) => Attendances.fromJson(e as Map<String, dynamic>))
          .toList(),
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      servant: json['khadem'] == null
          ? null
          : ServantDetails.fromJson(json['khadem'] as Map<String, dynamic>),
      social: json['social'] == null
          ? null
          : Gender.fromJson(json['social'] as Map<String, dynamic>),
      userPoints: (json['userPoints'] as List<dynamic>?)
          ?.map((e) => UserPoints.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServeeUpdateDataImplToJson(
        _$ServeeUpdateDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'phone2': instance.phone2,
      'adress': instance.adress,
      'birthdate': instance.birthdate,
      'addNo': instance.addNo,
      'addStreet': instance.addStreet,
      'addFloor': instance.addFloor,
      'addBeside': instance.addBeside,
      'father': instance.father,
      'university': instance.university,
      'faculty': instance.faculty,
      'studentYear': instance.studentYear,
      'khademId': instance.servantId,
      'groupId': instance.groupId,
      'notes': instance.notes,
      'levelId': instance.levelId,
      'oldId': instance.oldId,
      'genderId': instance.genderId,
      'job': instance.job,
      'socialId': instance.socialId,
      'attendances': instance.attendances,
      'gender': instance.gender,
      'group': instance.group,
      'khadem': instance.servant,
      'social': instance.social,
      'userPoints': instance.userPoints,
    };

_$AttendancesImpl _$$AttendancesImplFromJson(Map<String, dynamic> json) =>
    _$AttendancesImpl(
      attId: (json['attId'] as num?)?.toInt(),
      serveeId: (json['makhdomeId'] as num?)?.toInt(),
      date: json['date'] as String?,
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
      servee: json['makhdome'] as String?,
    );

Map<String, dynamic> _$$AttendancesImplToJson(_$AttendancesImpl instance) =>
    <String, dynamic>{
      'attId': instance.attId,
      'makhdomeId': instance.serveeId,
      'date': instance.date,
      'time': instance.time,
      'makhdome': instance.servee,
    };

_$TimeImpl _$$TimeImplFromJson(Map<String, dynamic> json) => _$TimeImpl(
      ticks: (json['ticks'] as num?)?.toInt(),
      days: (json['days'] as num?)?.toInt(),
      hours: (json['hours'] as num?)?.toInt(),
      milliseconds: (json['milliseconds'] as num?)?.toInt(),
      microseconds: (json['microseconds'] as num?)?.toInt(),
      nanoseconds: (json['nanoseconds'] as num?)?.toInt(),
      minutes: (json['minutes'] as num?)?.toInt(),
      seconds: (json['seconds'] as num?)?.toInt(),
      totalDays: (json['totalDays'] as num?)?.toInt(),
      totalHours: (json['totalHours'] as num?)?.toInt(),
      totalMilliseconds: (json['totalMilliseconds'] as num?)?.toInt(),
      totalMicroseconds: (json['totalMicroseconds'] as num?)?.toInt(),
      totalNanoseconds: (json['totalNanoseconds'] as num?)?.toInt(),
      totalMinutes: (json['totalMinutes'] as num?)?.toInt(),
      totalSeconds: (json['totalSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TimeImplToJson(_$TimeImpl instance) =>
    <String, dynamic>{
      'ticks': instance.ticks,
      'days': instance.days,
      'hours': instance.hours,
      'milliseconds': instance.milliseconds,
      'microseconds': instance.microseconds,
      'nanoseconds': instance.nanoseconds,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'totalDays': instance.totalDays,
      'totalHours': instance.totalHours,
      'totalMilliseconds': instance.totalMilliseconds,
      'totalMicroseconds': instance.totalMicroseconds,
      'totalNanoseconds': instance.totalNanoseconds,
      'totalMinutes': instance.totalMinutes,
      'totalSeconds': instance.totalSeconds,
    };

_$GenderImpl _$$GenderImplFromJson(Map<String, dynamic> json) => _$GenderImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      servees: (json['makhdoms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$GenderImplToJson(_$GenderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'makhdoms': instance.servees,
    };

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      groupId: (json['groupId'] as num?)?.toInt(),
      groupName: json['groupName'] as String?,
      servants: (json['khadems'] as List<dynamic>?)
          ?.map((e) => ServantDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      servees: (json['makhdoms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'groupName': instance.groupName,
      'khadems': instance.servants,
      'makhdoms': instance.servees,
    };

_$ServantDetailsImpl _$$ServantDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ServantDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone1: json['phone1'] as String?,
      phone2: json['phone2'] as String?,
      adress: json['adress'] as String?,
      image: json['image'] as String?,
      groupId: (json['groupId'] as num?)?.toInt(),
      birthDate: json['birthDate'] as String?,
      levelId: (json['levelId'] as num?)?.toInt(),
      eftkads: (json['eftkads'] as List<dynamic>?)
          ?.map((e) => Eftkads.fromJson(e as Map<String, dynamic>))
          .toList(),
      group: json['group'] as String?,
      servees: (json['makhdoms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => Users.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServantDetailsImplToJson(
        _$ServantDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone1': instance.phone1,
      'phone2': instance.phone2,
      'adress': instance.adress,
      'image': instance.image,
      'groupId': instance.groupId,
      'birthDate': instance.birthDate,
      'levelId': instance.levelId,
      'eftkads': instance.eftkads,
      'group': instance.group,
      'makhdoms': instance.servees,
      'users': instance.users,
    };

_$EftkadsImpl _$$EftkadsImplFromJson(Map<String, dynamic> json) =>
    _$EftkadsImpl(
      id: (json['id'] as num?)?.toInt(),
      eftkadDate: json['eftkadDate'] as String?,
      serveeId: (json['makhdomId'] as num?)?.toInt(),
      servantId: (json['khademId'] as num?)?.toInt(),
      eftkadStatues: (json['eftkadStatues'] as num?)?.toInt(),
      eftkadStatuesNavigation: json['eftkadStatuesNavigation'] == null
          ? null
          : EftkadStatuesNavigation.fromJson(
              json['eftkadStatuesNavigation'] as Map<String, dynamic>),
      servant: json['khadem'] as String?,
    );

Map<String, dynamic> _$$EftkadsImplToJson(_$EftkadsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eftkadDate': instance.eftkadDate,
      'makhdomId': instance.serveeId,
      'khademId': instance.servantId,
      'eftkadStatues': instance.eftkadStatues,
      'eftkadStatuesNavigation': instance.eftkadStatuesNavigation,
      'khadem': instance.servant,
    };

_$EftkadStatuesNavigationImpl _$$EftkadStatuesNavigationImplFromJson(
        Map<String, dynamic> json) =>
    _$EftkadStatuesNavigationImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      value: json['value'] as String?,
      eftkads:
          (json['eftkads'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$EftkadStatuesNavigationImplToJson(
        _$EftkadStatuesNavigationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'value': instance.value,
      'eftkads': instance.eftkads,
    };

_$UsersImpl _$$UsersImplFromJson(Map<String, dynamic> json) => _$UsersImpl(
      userId: (json['userId'] as num?)?.toInt(),
      servantId: (json['khademId'] as num?)?.toInt(),
      userName: json['userName'] as String?,
      password: json['password'] as String?,
      userRole: json['userRole'] as String?,
      isActive: json['isActive'] as bool?,
      roleId: (json['roleId'] as num?)?.toInt(),
      levelId: (json['levelId'] as num?)?.toInt(),
      servant: json['khadem'] as String?,
      level: json['level'] == null
          ? null
          : Level.fromJson(json['level'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UsersImplToJson(_$UsersImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'khademId': instance.servantId,
      'userName': instance.userName,
      'password': instance.password,
      'userRole': instance.userRole,
      'isActive': instance.isActive,
      'roleId': instance.roleId,
      'levelId': instance.levelId,
      'khadem': instance.servant,
      'level': instance.level,
      'role': instance.role,
    };

_$LevelImpl _$$LevelImplFromJson(Map<String, dynamic> json) => _$LevelImpl(
      id: (json['id'] as num?)?.toInt(),
      levelName: json['levelName'] as String?,
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LevelImplToJson(_$LevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'levelName': instance.levelName,
      'users': instance.users,
    };

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) => _$RoleImpl(
      id: (json['id'] as num?)?.toInt(),
      roleName: json['roleName'] as String?,
      rolePermissions: (json['rolePermissions'] as List<dynamic>?)
          ?.map((e) => RolePermissions.fromJson(e as Map<String, dynamic>))
          .toList(),
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roleName': instance.roleName,
      'rolePermissions': instance.rolePermissions,
      'users': instance.users,
    };

_$RolePermissionsImpl _$$RolePermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$RolePermissionsImpl(
      id: (json['id'] as num?)?.toInt(),
      roleId: (json['roleId'] as num?)?.toInt(),
      permissionId: (json['permissionId'] as num?)?.toInt(),
      permission: json['permission'] == null
          ? null
          : Permission.fromJson(json['permission'] as Map<String, dynamic>),
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$RolePermissionsImplToJson(
        _$RolePermissionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roleId': instance.roleId,
      'permissionId': instance.permissionId,
      'permission': instance.permission,
      'role': instance.role,
    };

_$PermissionImpl _$$PermissionImplFromJson(Map<String, dynamic> json) =>
    _$PermissionImpl(
      id: (json['id'] as num?)?.toInt(),
      permissionName: json['permissionName'] as String?,
      permissionCategory: json['permissionCategory'] as String?,
      rolePermissions: (json['rolePermissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PermissionImplToJson(_$PermissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'permissionName': instance.permissionName,
      'permissionCategory': instance.permissionCategory,
      'rolePermissions': instance.rolePermissions,
    };

_$UserPointsImpl _$$UserPointsImplFromJson(Map<String, dynamic> json) =>
    _$UserPointsImpl(
      id: (json['id'] as num?)?.toInt(),
      serveeId: (json['makhdomId'] as num?)?.toInt(),
      levelId: (json['levelId'] as num?)?.toInt(),
      points: (json['points'] as num?)?.toInt(),
      creationData: json['creationData'] as String?,
      updatedDate: json['updatedDate'] as String?,
      servee: json['makhdom'] as String?,
    );

Map<String, dynamic> _$$UserPointsImplToJson(_$UserPointsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'makhdomId': instance.serveeId,
      'levelId': instance.levelId,
      'points': instance.points,
      'creationData': instance.creationData,
      'updatedDate': instance.updatedDate,
      'makhdom': instance.servee,
    };
