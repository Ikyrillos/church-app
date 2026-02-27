// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DropdownModelImpl _$$DropdownModelImplFromJson(Map<String, dynamic> json) =>
    _$DropdownModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      extratext: json['extratext'] as String? ?? '',
    );

Map<String, dynamic> _$$DropdownModelImplToJson(_$DropdownModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'extratext': instance.extratext,
    };
