// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_names_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllNamesModelImpl _$$AllNamesModelImplFromJson(Map<String, dynamic> json) =>
    _$AllNamesModelImpl(
      code: json['code'] as String?,
      errorMsg: json['errorMsg'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GeneralData.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as num?,
      pageNo: json['pageNo'] as num?,
      success: json['success'] as bool?,
      listData: json['listData'],
    );

Map<String, dynamic> _$$AllNamesModelImplToJson(_$AllNamesModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'errorMsg': instance.errorMsg,
      'data': instance.data,
      'count': instance.count,
      'pageNo': instance.pageNo,
      'success': instance.success,
      'listData': instance.listData,
    };
