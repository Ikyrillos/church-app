// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddAttendanceModel _$AddAttendanceModelFromJson(Map<String, dynamic> json) {
  return _AddAttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$AddAttendanceModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AddAttendanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAttendanceModelCopyWith<AddAttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAttendanceModelCopyWith<$Res> {
  factory $AddAttendanceModelCopyWith(
          AddAttendanceModel value, $Res Function(AddAttendanceModel) then) =
      _$AddAttendanceModelCopyWithImpl<$Res, AddAttendanceModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$AddAttendanceModelCopyWithImpl<$Res, $Val extends AddAttendanceModel>
    implements $AddAttendanceModelCopyWith<$Res> {
  _$AddAttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAttendanceModelImplCopyWith<$Res>
    implements $AddAttendanceModelCopyWith<$Res> {
  factory _$$AddAttendanceModelImplCopyWith(_$AddAttendanceModelImpl value,
          $Res Function(_$AddAttendanceModelImpl) then) =
      __$$AddAttendanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$AddAttendanceModelImplCopyWithImpl<$Res>
    extends _$AddAttendanceModelCopyWithImpl<$Res, _$AddAttendanceModelImpl>
    implements _$$AddAttendanceModelImplCopyWith<$Res> {
  __$$AddAttendanceModelImplCopyWithImpl(_$AddAttendanceModelImpl _value,
      $Res Function(_$AddAttendanceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AddAttendanceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAttendanceModelImpl implements _AddAttendanceModel {
  const _$AddAttendanceModelImpl({required this.id, required this.name});

  factory _$AddAttendanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAttendanceModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AddAttendanceModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAttendanceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of AddAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAttendanceModelImplCopyWith<_$AddAttendanceModelImpl> get copyWith =>
      __$$AddAttendanceModelImplCopyWithImpl<_$AddAttendanceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAttendanceModelImplToJson(
      this,
    );
  }
}

abstract class _AddAttendanceModel implements AddAttendanceModel {
  const factory _AddAttendanceModel(
      {required final int id,
      required final String name}) = _$AddAttendanceModelImpl;

  factory _AddAttendanceModel.fromJson(Map<String, dynamic> json) =
      _$AddAttendanceModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of AddAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAttendanceModelImplCopyWith<_$AddAttendanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
