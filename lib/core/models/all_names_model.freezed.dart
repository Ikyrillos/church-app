// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_names_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllNamesModel _$AllNamesModelFromJson(Map<String, dynamic> json) {
  return _AllNamesModel.fromJson(json);
}

/// @nodoc
mixin _$AllNamesModel {
  String? get code => throw _privateConstructorUsedError;
  dynamic get errorMsg => throw _privateConstructorUsedError;
  List<GeneralData>? get data => throw _privateConstructorUsedError;
  num? get count => throw _privateConstructorUsedError;
  num? get pageNo => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  dynamic get listData => throw _privateConstructorUsedError;

  /// Serializes this AllNamesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllNamesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllNamesModelCopyWith<AllNamesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllNamesModelCopyWith<$Res> {
  factory $AllNamesModelCopyWith(
          AllNamesModel value, $Res Function(AllNamesModel) then) =
      _$AllNamesModelCopyWithImpl<$Res, AllNamesModel>;
  @useResult
  $Res call(
      {String? code,
      dynamic errorMsg,
      List<GeneralData>? data,
      num? count,
      num? pageNo,
      bool? success,
      dynamic listData});
}

/// @nodoc
class _$AllNamesModelCopyWithImpl<$Res, $Val extends AllNamesModel>
    implements $AllNamesModelCopyWith<$Res> {
  _$AllNamesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllNamesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? errorMsg = freezed,
    Object? data = freezed,
    Object? count = freezed,
    Object? pageNo = freezed,
    Object? success = freezed,
    Object? listData = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GeneralData>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as num?,
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as num?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      listData: freezed == listData
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllNamesModelImplCopyWith<$Res>
    implements $AllNamesModelCopyWith<$Res> {
  factory _$$AllNamesModelImplCopyWith(
          _$AllNamesModelImpl value, $Res Function(_$AllNamesModelImpl) then) =
      __$$AllNamesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      dynamic errorMsg,
      List<GeneralData>? data,
      num? count,
      num? pageNo,
      bool? success,
      dynamic listData});
}

/// @nodoc
class __$$AllNamesModelImplCopyWithImpl<$Res>
    extends _$AllNamesModelCopyWithImpl<$Res, _$AllNamesModelImpl>
    implements _$$AllNamesModelImplCopyWith<$Res> {
  __$$AllNamesModelImplCopyWithImpl(
      _$AllNamesModelImpl _value, $Res Function(_$AllNamesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllNamesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? errorMsg = freezed,
    Object? data = freezed,
    Object? count = freezed,
    Object? pageNo = freezed,
    Object? success = freezed,
    Object? listData = freezed,
  }) {
    return _then(_$AllNamesModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GeneralData>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as num?,
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as num?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      listData: freezed == listData
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllNamesModelImpl implements _AllNamesModel {
  const _$AllNamesModelImpl(
      {this.code,
      this.errorMsg,
      final List<GeneralData>? data,
      this.count,
      this.pageNo,
      this.success,
      this.listData})
      : _data = data;

  factory _$AllNamesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllNamesModelImplFromJson(json);

  @override
  final String? code;
  @override
  final dynamic errorMsg;
  final List<GeneralData>? _data;
  @override
  List<GeneralData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final num? count;
  @override
  final num? pageNo;
  @override
  final bool? success;
  @override
  final dynamic listData;

  @override
  String toString() {
    return 'AllNamesModel(code: $code, errorMsg: $errorMsg, data: $data, count: $count, pageNo: $pageNo, success: $success, listData: $listData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllNamesModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.listData, listData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      const DeepCollectionEquality().hash(errorMsg),
      const DeepCollectionEquality().hash(_data),
      count,
      pageNo,
      success,
      const DeepCollectionEquality().hash(listData));

  /// Create a copy of AllNamesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllNamesModelImplCopyWith<_$AllNamesModelImpl> get copyWith =>
      __$$AllNamesModelImplCopyWithImpl<_$AllNamesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllNamesModelImplToJson(
      this,
    );
  }
}

abstract class _AllNamesModel implements AllNamesModel {
  const factory _AllNamesModel(
      {final String? code,
      final dynamic errorMsg,
      final List<GeneralData>? data,
      final num? count,
      final num? pageNo,
      final bool? success,
      final dynamic listData}) = _$AllNamesModelImpl;

  factory _AllNamesModel.fromJson(Map<String, dynamic> json) =
      _$AllNamesModelImpl.fromJson;

  @override
  String? get code;
  @override
  dynamic get errorMsg;
  @override
  List<GeneralData>? get data;
  @override
  num? get count;
  @override
  num? get pageNo;
  @override
  bool? get success;
  @override
  dynamic get listData;

  /// Create a copy of AllNamesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllNamesModelImplCopyWith<_$AllNamesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
