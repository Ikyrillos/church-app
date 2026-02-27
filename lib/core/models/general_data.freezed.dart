// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralData _$GeneralDataFromJson(Map<String, dynamic> json) {
  return _GeneralData.fromJson(json);
}

/// @nodoc
mixin _$GeneralData {
  num? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this GeneralData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeneralData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneralDataCopyWith<GeneralData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralDataCopyWith<$Res> {
  factory $GeneralDataCopyWith(
          GeneralData value, $Res Function(GeneralData) then) =
      _$GeneralDataCopyWithImpl<$Res, GeneralData>;
  @useResult
  $Res call({num? id, String? name});
}

/// @nodoc
class _$GeneralDataCopyWithImpl<$Res, $Val extends GeneralData>
    implements $GeneralDataCopyWith<$Res> {
  _$GeneralDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeneralData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralDataImplCopyWith<$Res>
    implements $GeneralDataCopyWith<$Res> {
  factory _$$GeneralDataImplCopyWith(
          _$GeneralDataImpl value, $Res Function(_$GeneralDataImpl) then) =
      __$$GeneralDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? id, String? name});
}

/// @nodoc
class __$$GeneralDataImplCopyWithImpl<$Res>
    extends _$GeneralDataCopyWithImpl<$Res, _$GeneralDataImpl>
    implements _$$GeneralDataImplCopyWith<$Res> {
  __$$GeneralDataImplCopyWithImpl(
      _$GeneralDataImpl _value, $Res Function(_$GeneralDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeneralData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$GeneralDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralDataImpl implements _GeneralData {
  const _$GeneralDataImpl({this.id, this.name});

  factory _$GeneralDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralDataImplFromJson(json);

  @override
  final num? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'GeneralData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GeneralData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralDataImplCopyWith<_$GeneralDataImpl> get copyWith =>
      __$$GeneralDataImplCopyWithImpl<_$GeneralDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralDataImplToJson(
      this,
    );
  }
}

abstract class _GeneralData implements GeneralData {
  const factory _GeneralData({final num? id, final String? name}) =
      _$GeneralDataImpl;

  factory _GeneralData.fromJson(Map<String, dynamic> json) =
      _$GeneralDataImpl.fromJson;

  @override
  num? get id;
  @override
  String? get name;

  /// Create a copy of GeneralData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneralDataImplCopyWith<_$GeneralDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
