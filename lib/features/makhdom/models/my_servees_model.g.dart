// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_servees_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyServeesModelImpl _$$MyServeesModelImplFromJson(Map<String, dynamic> json) =>
    _$MyServeesModelImpl(
      code: json['code'] as String? ?? '',
      errorMsg: json['errorMsg'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MyServeesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num?)?.toInt() ?? 0,
      pageNo: (json['pageNo'] as num?)?.toInt() ?? 0,
      success: json['success'] as bool? ?? false,
      listData: (json['listData'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MyServeesModelImplToJson(
        _$MyServeesModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'errorMsg': instance.errorMsg,
      'data': instance.data,
      'count': instance.count,
      'pageNo': instance.pageNo,
      'success': instance.success,
      'listData': instance.listData,
    };

_$MyServeesDataImpl _$$MyServeesDataImplFromJson(Map<String, dynamic> json) =>
    _$MyServeesDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      phone2: json['phone2'] as String?,
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
      genderId: (json['genderId'] as num?)?.toInt(),
      job: json['job'] as String?,
      socialId: (json['socialId'] as num?)?.toInt(),
      lastAttendanceDate: json['lastAttendanceDate'] as String?,
      lastCallDate: json['lastCallDate'] as String?,
    );

Map<String, dynamic> _$$MyServeesDataImplToJson(_$MyServeesDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'phone2': instance.phone2,
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
      'genderId': instance.genderId,
      'job': instance.job,
      'socialId': instance.socialId,
      'lastAttendanceDate': instance.lastAttendanceDate,
      'lastCallDate': instance.lastCallDate,
    };
