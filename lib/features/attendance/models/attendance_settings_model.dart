import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_settings_model.freezed.dart';
part 'attendance_settings_model.g.dart';

@freezed
class AttendanceSettingsModel with _$AttendanceSettingsModel {
  const factory AttendanceSettingsModel({
    required bool value,
    @JsonKey(name: 'makhdomId') required int serveeId,
  }) = _AttendanceSettingsModel;

  factory AttendanceSettingsModel.fromJson(Map<String, dynamic> json) => _$AttendanceSettingsModelFromJson(json);
}
