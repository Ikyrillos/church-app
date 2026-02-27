import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_attendance_model.freezed.dart';
part 'add_attendance_model.g.dart';

@freezed
class AddAttendanceModel with _$AddAttendanceModel {
  const factory AddAttendanceModel({
    required int id,
    required String name,
  }) = _AddAttendanceModel;

  factory AddAttendanceModel.fromJson(Map<String, dynamic> json) => _$AddAttendanceModelFromJson(json);
}
