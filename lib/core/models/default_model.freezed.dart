// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DefaultModel _$DefaultModelFromJson(Map<String, dynamic> json) {
  return _DefaultModel.fromJson(json);
}

/// @nodoc
mixin _$DefaultModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this DefaultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DefaultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultModelCopyWith<DefaultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultModelCopyWith<$Res> {
  factory $DefaultModelCopyWith(
          DefaultModel value, $Res Function(DefaultModel) then) =
      _$DefaultModelCopyWithImpl<$Res, DefaultModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$DefaultModelCopyWithImpl<$Res, $Val extends DefaultModel>
    implements $DefaultModelCopyWith<$Res> {
  _$DefaultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultModel
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
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultModelImplCopyWith<$Res>
    implements $DefaultModelCopyWith<$Res> {
  factory _$$DefaultModelImplCopyWith(
          _$DefaultModelImpl value, $Res Function(_$DefaultModelImpl) then) =
      __$$DefaultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$DefaultModelImplCopyWithImpl<$Res>
    extends _$DefaultModelCopyWithImpl<$Res, _$DefaultModelImpl>
    implements _$$DefaultModelImplCopyWith<$Res> {
  __$$DefaultModelImplCopyWithImpl(
      _$DefaultModelImpl _value, $Res Function(_$DefaultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefaultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DefaultModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultModelImpl implements _DefaultModel {
  const _$DefaultModelImpl({this.id, this.name});

  factory _$DefaultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'DefaultModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of DefaultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultModelImplCopyWith<_$DefaultModelImpl> get copyWith =>
      __$$DefaultModelImplCopyWithImpl<_$DefaultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultModelImplToJson(
      this,
    );
  }
}

abstract class _DefaultModel implements DefaultModel {
  const factory _DefaultModel({final int? id, final String? name}) =
      _$DefaultModelImpl;

  factory _DefaultModel.fromJson(Map<String, dynamic> json) =
      _$DefaultModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of DefaultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultModelImplCopyWith<_$DefaultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
