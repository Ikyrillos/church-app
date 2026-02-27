import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_model.freezed.dart';
part 'default_model.g.dart';

@freezed
class DefaultModel with _$DefaultModel {
  const factory DefaultModel({
    int? id,
    String? name,
  }) = _DefaultModel;

  factory DefaultModel.fromJson(Map<String, dynamic> json) => _$DefaultModelFromJson(json);
}
