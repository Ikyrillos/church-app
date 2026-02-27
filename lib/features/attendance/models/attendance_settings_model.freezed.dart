// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceSettingsModel _$AttendanceSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _AttendanceSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceSettingsModel {
  bool get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdomId')
  int get serveeId => throw _privateConstructorUsedError;

  /// Serializes this AttendanceSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceSettingsModelCopyWith<AttendanceSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceSettingsModelCopyWith<$Res> {
  factory $AttendanceSettingsModelCopyWith(AttendanceSettingsModel value,
          $Res Function(AttendanceSettingsModel) then) =
      _$AttendanceSettingsModelCopyWithImpl<$Res, AttendanceSettingsModel>;
  @useResult
  $Res call({bool value, @JsonKey(name: 'makhdomId') int serveeId});
}

/// @nodoc
class _$AttendanceSettingsModelCopyWithImpl<$Res,
        $Val extends AttendanceSettingsModel>
    implements $AttendanceSettingsModelCopyWith<$Res> {
  _$AttendanceSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? serveeId = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
      serveeId: null == serveeId
          ? _value.serveeId
          : serveeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceSettingsModelImplCopyWith<$Res>
    implements $AttendanceSettingsModelCopyWith<$Res> {
  factory _$$AttendanceSettingsModelImplCopyWith(
          _$AttendanceSettingsModelImpl value,
          $Res Function(_$AttendanceSettingsModelImpl) then) =
      __$$AttendanceSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool value, @JsonKey(name: 'makhdomId') int serveeId});
}

/// @nodoc
class __$$AttendanceSettingsModelImplCopyWithImpl<$Res>
    extends _$AttendanceSettingsModelCopyWithImpl<$Res,
        _$AttendanceSettingsModelImpl>
    implements _$$AttendanceSettingsModelImplCopyWith<$Res> {
  __$$AttendanceSettingsModelImplCopyWithImpl(
      _$AttendanceSettingsModelImpl _value,
      $Res Function(_$AttendanceSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? serveeId = null,
  }) {
    return _then(_$AttendanceSettingsModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
      serveeId: null == serveeId
          ? _value.serveeId
          : serveeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceSettingsModelImpl implements _AttendanceSettingsModel {
  const _$AttendanceSettingsModelImpl(
      {required this.value,
      @JsonKey(name: 'makhdomId') required this.serveeId});

  factory _$AttendanceSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceSettingsModelImplFromJson(json);

  @override
  final bool value;
  @override
  @JsonKey(name: 'makhdomId')
  final int serveeId;

  @override
  String toString() {
    return 'AttendanceSettingsModel(value: $value, serveeId: $serveeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceSettingsModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.serveeId, serveeId) ||
                other.serveeId == serveeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, serveeId);

  /// Create a copy of AttendanceSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceSettingsModelImplCopyWith<_$AttendanceSettingsModelImpl>
      get copyWith => __$$AttendanceSettingsModelImplCopyWithImpl<
          _$AttendanceSettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceSettingsModel implements AttendanceSettingsModel {
  const factory _AttendanceSettingsModel(
          {required final bool value,
          @JsonKey(name: 'makhdomId') required final int serveeId}) =
      _$AttendanceSettingsModelImpl;

  factory _AttendanceSettingsModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceSettingsModelImpl.fromJson;

  @override
  bool get value;
  @override
  @JsonKey(name: 'makhdomId')
  int get serveeId;

  /// Create a copy of AttendanceSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceSettingsModelImplCopyWith<_$AttendanceSettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
