// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceSettingsModelImpl _$$AttendanceSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceSettingsModelImpl(
      value: json['value'] as bool,
      serveeId: (json['makhdomId'] as num).toInt(),
    );

Map<String, dynamic> _$$AttendanceSettingsModelImplToJson(
        _$AttendanceSettingsModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'makhdomId': instance.serveeId,
    };
