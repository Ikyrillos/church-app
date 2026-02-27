// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServantModelImpl _$$ServantModelImplFromJson(Map<String, dynamic> json) =>
    _$ServantModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ServantData.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as String?,
      errorMsg: json['errorMsg'],
      count: (json['count'] as num?)?.toInt(),
      pageNo: (json['pageNo'] as num?)?.toInt(),
      success: json['success'] as bool?,
      listData: json['listData'],
    );

Map<String, dynamic> _$$ServantModelImplToJson(_$ServantModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'code': instance.code,
      'errorMsg': instance.errorMsg,
      'count': instance.count,
      'pageNo': instance.pageNo,
      'success': instance.success,
      'listData': instance.listData,
    };

_$ServantDataImpl _$$ServantDataImplFromJson(Map<String, dynamic> json) =>
    _$ServantDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone1: json['phone1'] as String?,
      birthDate: json['birthDate'] as String?,
      levelId: (json['levelId'] as num?)?.toInt(),
      serveesCount: (json['makhdomsCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ServantDataImplToJson(_$ServantDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone1': instance.phone1,
      'birthDate': instance.birthDate,
      'levelId': instance.levelId,
      'makhdomsCount': instance.serveesCount,
    };
