import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_servees_model.freezed.dart';
part 'my_servees_model.g.dart';

@freezed
class MyServeesModel with _$MyServeesModel {
  const factory MyServeesModel({
    @Default('') String code,
    @Default('') String errorMsg,
    List<MyServeesData>? data,
    @Default(0) int count,
    @Default(0) int pageNo,
    @Default(false) bool success,
    @Default([]) List<String> listData,
  }) = _MyServeesModel;

  factory MyServeesModel.fromJson(Map<String, dynamic> json) => _$MyServeesModelFromJson(json);
}

@freezed
class MyServeesData with _$MyServeesData {
  const factory MyServeesData({
    int? id,
    String? name,
    String? phone,
    String? phone2,
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
    int? genderId,
    String? job,
    int? socialId,
    String? lastAttendanceDate,
    String? lastCallDate,
  }) = _MyServeesData;

  factory MyServeesData.fromJson(Map<String, dynamic> json) => _$MyServeesDataFromJson(json);
}
