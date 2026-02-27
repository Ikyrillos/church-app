// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DropdownModel _$DropdownModelFromJson(Map<String, dynamic> json) {
  return _DropdownModel.fromJson(json);
}

/// @nodoc
mixin _$DropdownModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get extratext => throw _privateConstructorUsedError;

  /// Serializes this DropdownModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropdownModelCopyWith<DropdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownModelCopyWith<$Res> {
  factory $DropdownModelCopyWith(
          DropdownModel value, $Res Function(DropdownModel) then) =
      _$DropdownModelCopyWithImpl<$Res, DropdownModel>;
  @useResult
  $Res call({int? id, String? name, String extratext});
}

/// @nodoc
class _$DropdownModelCopyWithImpl<$Res, $Val extends DropdownModel>
    implements $DropdownModelCopyWith<$Res> {
  _$DropdownModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? extratext = null,
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
      extratext: null == extratext
          ? _value.extratext
          : extratext // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropdownModelImplCopyWith<$Res>
    implements $DropdownModelCopyWith<$Res> {
  factory _$$DropdownModelImplCopyWith(
          _$DropdownModelImpl value, $Res Function(_$DropdownModelImpl) then) =
      __$$DropdownModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String extratext});
}

/// @nodoc
class __$$DropdownModelImplCopyWithImpl<$Res>
    extends _$DropdownModelCopyWithImpl<$Res, _$DropdownModelImpl>
    implements _$$DropdownModelImplCopyWith<$Res> {
  __$$DropdownModelImplCopyWithImpl(
      _$DropdownModelImpl _value, $Res Function(_$DropdownModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? extratext = null,
  }) {
    return _then(_$DropdownModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      extratext: null == extratext
          ? _value.extratext
          : extratext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DropdownModelImpl implements _DropdownModel {
  const _$DropdownModelImpl({this.id, this.name, this.extratext = ''});

  factory _$DropdownModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DropdownModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey()
  final String extratext;

  @override
  String toString() {
    return 'DropdownModel(id: $id, name: $name, extratext: $extratext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.extratext, extratext) ||
                other.extratext == extratext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, extratext);

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownModelImplCopyWith<_$DropdownModelImpl> get copyWith =>
      __$$DropdownModelImplCopyWithImpl<_$DropdownModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DropdownModelImplToJson(
      this,
    );
  }
}

abstract class _DropdownModel implements DropdownModel {
  const factory _DropdownModel(
      {final int? id,
      final String? name,
      final String extratext}) = _$DropdownModelImpl;

  factory _DropdownModel.fromJson(Map<String, dynamic> json) =
      _$DropdownModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String get extratext;

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropdownModelImplCopyWith<_$DropdownModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
