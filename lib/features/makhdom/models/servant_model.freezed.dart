// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'servant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServantModel _$ServantModelFromJson(Map<String, dynamic> json) {
  return _ServantModel.fromJson(json);
}

/// @nodoc
mixin _$ServantModel {
  List<ServantData>? get data => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  dynamic get errorMsg => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int? get pageNo => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  dynamic get listData => throw _privateConstructorUsedError;

  /// Serializes this ServantModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServantModelCopyWith<ServantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServantModelCopyWith<$Res> {
  factory $ServantModelCopyWith(
          ServantModel value, $Res Function(ServantModel) then) =
      _$ServantModelCopyWithImpl<$Res, ServantModel>;
  @useResult
  $Res call(
      {List<ServantData>? data,
      String? code,
      dynamic errorMsg,
      int? count,
      int? pageNo,
      bool? success,
      dynamic listData});
}

/// @nodoc
class _$ServantModelCopyWithImpl<$Res, $Val extends ServantModel>
    implements $ServantModelCopyWith<$Res> {
  _$ServantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? code = freezed,
    Object? errorMsg = freezed,
    Object? count = freezed,
    Object? pageNo = freezed,
    Object? success = freezed,
    Object? listData = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServantData>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$ServantModelImplCopyWith<$Res>
    implements $ServantModelCopyWith<$Res> {
  factory _$$ServantModelImplCopyWith(
          _$ServantModelImpl value, $Res Function(_$ServantModelImpl) then) =
      __$$ServantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ServantData>? data,
      String? code,
      dynamic errorMsg,
      int? count,
      int? pageNo,
      bool? success,
      dynamic listData});
}

/// @nodoc
class __$$ServantModelImplCopyWithImpl<$Res>
    extends _$ServantModelCopyWithImpl<$Res, _$ServantModelImpl>
    implements _$$ServantModelImplCopyWith<$Res> {
  __$$ServantModelImplCopyWithImpl(
      _$ServantModelImpl _value, $Res Function(_$ServantModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? code = freezed,
    Object? errorMsg = freezed,
    Object? count = freezed,
    Object? pageNo = freezed,
    Object? success = freezed,
    Object? listData = freezed,
  }) {
    return _then(_$ServantModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServantData>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$ServantModelImpl implements _ServantModel {
  const _$ServantModelImpl(
      {final List<ServantData>? data,
      this.code,
      this.errorMsg,
      this.count,
      this.pageNo,
      this.success,
      this.listData})
      : _data = data;

  factory _$ServantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServantModelImplFromJson(json);

  final List<ServantData>? _data;
  @override
  List<ServantData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? code;
  @override
  final dynamic errorMsg;
  @override
  final int? count;
  @override
  final int? pageNo;
  @override
  final bool? success;
  @override
  final dynamic listData;

  @override
  String toString() {
    return 'ServantModel(data: $data, code: $code, errorMsg: $errorMsg, count: $count, pageNo: $pageNo, success: $success, listData: $listData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServantModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.listData, listData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      code,
      const DeepCollectionEquality().hash(errorMsg),
      count,
      pageNo,
      success,
      const DeepCollectionEquality().hash(listData));

  /// Create a copy of ServantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServantModelImplCopyWith<_$ServantModelImpl> get copyWith =>
      __$$ServantModelImplCopyWithImpl<_$ServantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServantModelImplToJson(
      this,
    );
  }
}

abstract class _ServantModel implements ServantModel {
  const factory _ServantModel(
      {final List<ServantData>? data,
      final String? code,
      final dynamic errorMsg,
      final int? count,
      final int? pageNo,
      final bool? success,
      final dynamic listData}) = _$ServantModelImpl;

  factory _ServantModel.fromJson(Map<String, dynamic> json) =
      _$ServantModelImpl.fromJson;

  @override
  List<ServantData>? get data;
  @override
  String? get code;
  @override
  dynamic get errorMsg;
  @override
  int? get count;
  @override
  int? get pageNo;
  @override
  bool? get success;
  @override
  dynamic get listData;

  /// Create a copy of ServantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServantModelImplCopyWith<_$ServantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServantData _$ServantDataFromJson(Map<String, dynamic> json) {
  return _ServantData.fromJson(json);
}

/// @nodoc
mixin _$ServantData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone1 => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  int? get levelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdomsCount')
  int? get serveesCount => throw _privateConstructorUsedError;

  /// Serializes this ServantData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServantData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServantDataCopyWith<ServantData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServantDataCopyWith<$Res> {
  factory $ServantDataCopyWith(
          ServantData value, $Res Function(ServantData) then) =
      _$ServantDataCopyWithImpl<$Res, ServantData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone1,
      String? birthDate,
      int? levelId,
      @JsonKey(name: 'makhdomsCount') int? serveesCount});
}

/// @nodoc
class _$ServantDataCopyWithImpl<$Res, $Val extends ServantData>
    implements $ServantDataCopyWith<$Res> {
  _$ServantDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServantData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone1 = freezed,
    Object? birthDate = freezed,
    Object? levelId = freezed,
    Object? serveesCount = freezed,
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
      phone1: freezed == phone1
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      serveesCount: freezed == serveesCount
          ? _value.serveesCount
          : serveesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServantDataImplCopyWith<$Res>
    implements $ServantDataCopyWith<$Res> {
  factory _$$ServantDataImplCopyWith(
          _$ServantDataImpl value, $Res Function(_$ServantDataImpl) then) =
      __$$ServantDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone1,
      String? birthDate,
      int? levelId,
      @JsonKey(name: 'makhdomsCount') int? serveesCount});
}

/// @nodoc
class __$$ServantDataImplCopyWithImpl<$Res>
    extends _$ServantDataCopyWithImpl<$Res, _$ServantDataImpl>
    implements _$$ServantDataImplCopyWith<$Res> {
  __$$ServantDataImplCopyWithImpl(
      _$ServantDataImpl _value, $Res Function(_$ServantDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServantData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone1 = freezed,
    Object? birthDate = freezed,
    Object? levelId = freezed,
    Object? serveesCount = freezed,
  }) {
    return _then(_$ServantDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone1: freezed == phone1
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      serveesCount: freezed == serveesCount
          ? _value.serveesCount
          : serveesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServantDataImpl implements _ServantData {
  const _$ServantDataImpl(
      {this.id,
      this.name,
      this.phone1,
      this.birthDate,
      this.levelId,
      @JsonKey(name: 'makhdomsCount') this.serveesCount});

  factory _$ServantDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServantDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone1;
  @override
  final String? birthDate;
  @override
  final int? levelId;
  @override
  @JsonKey(name: 'makhdomsCount')
  final int? serveesCount;

  @override
  String toString() {
    return 'ServantData(id: $id, name: $name, phone1: $phone1, birthDate: $birthDate, levelId: $levelId, serveesCount: $serveesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServantDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone1, phone1) || other.phone1 == phone1) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.serveesCount, serveesCount) ||
                other.serveesCount == serveesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, phone1, birthDate, levelId, serveesCount);

  /// Create a copy of ServantData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServantDataImplCopyWith<_$ServantDataImpl> get copyWith =>
      __$$ServantDataImplCopyWithImpl<_$ServantDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServantDataImplToJson(
      this,
    );
  }
}

abstract class _ServantData implements ServantData {
  const factory _ServantData(
          {final int? id,
          final String? name,
          final String? phone1,
          final String? birthDate,
          final int? levelId,
          @JsonKey(name: 'makhdomsCount') final int? serveesCount}) =
      _$ServantDataImpl;

  factory _ServantData.fromJson(Map<String, dynamic> json) =
      _$ServantDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone1;
  @override
  String? get birthDate;
  @override
  int? get levelId;
  @override
  @JsonKey(name: 'makhdomsCount')
  int? get serveesCount;

  /// Create a copy of ServantData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServantDataImplCopyWith<_$ServantDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
