import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:abosiefienapp/core/models/general_data.dart';

part 'all_names_model.freezed.dart';
part 'all_names_model.g.dart';

@freezed
class AllNamesModel with _$AllNamesModel {
  const factory AllNamesModel({
    String? code,
    dynamic errorMsg,
    List<GeneralData>? data,
    num? count,
    num? pageNo,
    bool? success,
    dynamic listData,
  }) = _AllNamesModel;

  factory AllNamesModel.fromJson(Map<String, dynamic> json) => _$AllNamesModelFromJson(json);
}
