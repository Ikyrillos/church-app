import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_data.freezed.dart';
part 'general_data.g.dart';

@freezed
class GeneralData with _$GeneralData {
  const factory GeneralData({
    num? id,
    String? name,
  }) = _GeneralData;

  factory GeneralData.fromJson(Map<String, dynamic> json) => _$GeneralDataFromJson(json);
}
