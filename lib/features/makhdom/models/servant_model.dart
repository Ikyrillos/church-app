import 'package:freezed_annotation/freezed_annotation.dart';

part 'servant_model.freezed.dart';
part 'servant_model.g.dart';

@freezed
class ServantModel with _$ServantModel {
  const factory ServantModel({
    List<ServantData>? data,
    String? code,
    dynamic errorMsg,
    int? count,
    int? pageNo,
    bool? success,
    dynamic listData,
  }) = _ServantModel;

  factory ServantModel.fromJson(Map<String, dynamic> json) => _$ServantModelFromJson(json);
}

@freezed
class ServantData with _$ServantData {
  const factory ServantData({
    int? id,
    String? name,
    String? phone1,
    String? birthDate,
    int? levelId,
    @JsonKey(name: 'makhdomsCount') int? serveesCount,
  }) = _ServantData;

  factory ServantData.fromJson(Map<String, dynamic> json) => _$ServantDataFromJson(json);
}
