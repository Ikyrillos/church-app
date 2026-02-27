// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'servee_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServeeUpdateModel _$ServeeUpdateModelFromJson(Map<String, dynamic> json) {
  return _ServeeUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$ServeeUpdateModel {
  String get code => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  ServeeUpdateData? get data => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  List<String> get listData => throw _privateConstructorUsedError;

  /// Serializes this ServeeUpdateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServeeUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServeeUpdateModelCopyWith<ServeeUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServeeUpdateModelCopyWith<$Res> {
  factory $ServeeUpdateModelCopyWith(
          ServeeUpdateModel value, $Res Function(ServeeUpdateModel) then) =
      _$ServeeUpdateModelCopyWithImpl<$Res, ServeeUpdateModel>;
  @useResult
  $Res call(
      {String code,
      String errorMsg,
      ServeeUpdateData? data,
      int count,
      int pageNo,
      bool success,
      List<String> listData});

  $ServeeUpdateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ServeeUpdateModelCopyWithImpl<$Res, $Val extends ServeeUpdateModel>
    implements $ServeeUpdateModelCopyWith<$Res> {
  _$ServeeUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServeeUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? errorMsg = null,
    Object? data = freezed,
    Object? count = null,
    Object? pageNo = null,
    Object? success = null,
    Object? listData = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ServeeUpdateData?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      listData: null == listData
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of ServeeUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServeeUpdateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ServeeUpdateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServeeUpdateModelImplCopyWith<$Res>
    implements $ServeeUpdateModelCopyWith<$Res> {
  factory _$$ServeeUpdateModelImplCopyWith(_$ServeeUpdateModelImpl value,
          $Res Function(_$ServeeUpdateModelImpl) then) =
      __$$ServeeUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String errorMsg,
      ServeeUpdateData? data,
      int count,
      int pageNo,
      bool success,
      List<String> listData});

  @override
  $ServeeUpdateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ServeeUpdateModelImplCopyWithImpl<$Res>
    extends _$ServeeUpdateModelCopyWithImpl<$Res, _$ServeeUpdateModelImpl>
    implements _$$ServeeUpdateModelImplCopyWith<$Res> {
  __$$ServeeUpdateModelImplCopyWithImpl(_$ServeeUpdateModelImpl _value,
      $Res Function(_$ServeeUpdateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServeeUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? errorMsg = null,
    Object? data = freezed,
    Object? count = null,
    Object? pageNo = null,
    Object? success = null,
    Object? listData = null,
  }) {
    return _then(_$ServeeUpdateModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ServeeUpdateData?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      listData: null == listData
          ? _value._listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServeeUpdateModelImpl implements _ServeeUpdateModel {
  const _$ServeeUpdateModelImpl(
      {this.code = '',
      this.errorMsg = '',
      this.data,
      this.count = 0,
      this.pageNo = 0,
      this.success = false,
      final List<String> listData = const []})
      : _listData = listData;

  factory _$ServeeUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServeeUpdateModelImplFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String errorMsg;
  @override
  final ServeeUpdateData? data;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int pageNo;
  @override
  @JsonKey()
  final bool success;
  final List<String> _listData;
  @override
  @JsonKey()
  List<String> get listData {
    if (_listData is EqualUnmodifiableListView) return _listData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listData);
  }

  @override
  String toString() {
    return 'ServeeUpdateModel(code: $code, errorMsg: $errorMsg, data: $data, count: $count, pageNo: $pageNo, success: $success, listData: $listData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServeeUpdateModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._listData, _listData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, errorMsg, data, count,
      pageNo, success, const DeepCollectionEquality().hash(_listData));

  /// Create a copy of ServeeUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServeeUpdateModelImplCopyWith<_$ServeeUpdateModelImpl> get copyWith =>
      __$$ServeeUpdateModelImplCopyWithImpl<_$ServeeUpdateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServeeUpdateModelImplToJson(
      this,
    );
  }
}

abstract class _ServeeUpdateModel implements ServeeUpdateModel {
  const factory _ServeeUpdateModel(
      {final String code,
      final String errorMsg,
      final ServeeUpdateData? data,
      final int count,
      final int pageNo,
      final bool success,
      final List<String> listData}) = _$ServeeUpdateModelImpl;

  factory _ServeeUpdateModel.fromJson(Map<String, dynamic> json) =
      _$ServeeUpdateModelImpl.fromJson;

  @override
  String get code;
  @override
  String get errorMsg;
  @override
  ServeeUpdateData? get data;
  @override
  int get count;
  @override
  int get pageNo;
  @override
  bool get success;
  @override
  List<String> get listData;

  /// Create a copy of ServeeUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServeeUpdateModelImplCopyWith<_$ServeeUpdateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServeeUpdateData _$ServeeUpdateDataFromJson(Map<String, dynamic> json) {
  return _ServeeUpdateData.fromJson(json);
}

/// @nodoc
mixin _$ServeeUpdateData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get phone2 => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  int? get addNo => throw _privateConstructorUsedError;
  String? get addStreet => throw _privateConstructorUsedError;
  int? get addFloor => throw _privateConstructorUsedError;
  String? get addBeside => throw _privateConstructorUsedError;
  String? get father => throw _privateConstructorUsedError;
  String? get university => throw _privateConstructorUsedError;
  String? get faculty => throw _privateConstructorUsedError;
  int? get studentYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'khademId')
  int? get servantId => throw _privateConstructorUsedError;
  int? get groupId => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get levelId => throw _privateConstructorUsedError;
  int? get oldId => throw _privateConstructorUsedError;
  int? get genderId => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  int? get socialId => throw _privateConstructorUsedError;
  List<Attendances>? get attendances => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  Group? get group => throw _privateConstructorUsedError;
  @JsonKey(name: 'khadem')
  ServantDetails? get servant => throw _privateConstructorUsedError;
  Gender? get social => throw _privateConstructorUsedError;
  List<UserPoints>? get userPoints => throw _privateConstructorUsedError;

  /// Serializes this ServeeUpdateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServeeUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServeeUpdateDataCopyWith<ServeeUpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServeeUpdateDataCopyWith<$Res> {
  factory $ServeeUpdateDataCopyWith(
          ServeeUpdateData value, $Res Function(ServeeUpdateData) then) =
      _$ServeeUpdateDataCopyWithImpl<$Res, ServeeUpdateData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? phone2,
      String? adress,
      String? birthdate,
      int? addNo,
      String? addStreet,
      int? addFloor,
      String? addBeside,
      String? father,
      String? university,
      String? faculty,
      int? studentYear,
      @JsonKey(name: 'khademId') int? servantId,
      int? groupId,
      String? notes,
      int? levelId,
      int? oldId,
      int? genderId,
      String? job,
      int? socialId,
      List<Attendances>? attendances,
      Gender? gender,
      Group? group,
      @JsonKey(name: 'khadem') ServantDetails? servant,
      Gender? social,
      List<UserPoints>? userPoints});

  $GenderCopyWith<$Res>? get gender;
  $GroupCopyWith<$Res>? get group;
  $ServantDetailsCopyWith<$Res>? get servant;
  $GenderCopyWith<$Res>? get social;
}

/// @nodoc
class _$ServeeUpdateDataCopyWithImpl<$Res, $Val extends ServeeUpdateData>
    implements $ServeeUpdateDataCopyWith<$Res> {
  _$ServeeUpdateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServeeUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? phone2 = freezed,
    Object? adress = freezed,
    Object? birthdate = freezed,
    Object? addNo = freezed,
    Object? addStreet = freezed,
    Object? addFloor = freezed,
    Object? addBeside = freezed,
    Object? father = freezed,
    Object? university = freezed,
    Object? faculty = freezed,
    Object? studentYear = freezed,
    Object? servantId = freezed,
    Object? groupId = freezed,
    Object? notes = freezed,
    Object? levelId = freezed,
    Object? oldId = freezed,
    Object? genderId = freezed,
    Object? job = freezed,
    Object? socialId = freezed,
    Object? attendances = freezed,
    Object? gender = freezed,
    Object? group = freezed,
    Object? servant = freezed,
    Object? social = freezed,
    Object? userPoints = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phone2: freezed == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      addNo: freezed == addNo
          ? _value.addNo
          : addNo // ignore: cast_nullable_to_non_nullable
              as int?,
      addStreet: freezed == addStreet
          ? _value.addStreet
          : addStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      addFloor: freezed == addFloor
          ? _value.addFloor
          : addFloor // ignore: cast_nullable_to_non_nullable
              as int?,
      addBeside: freezed == addBeside
          ? _value.addBeside
          : addBeside // ignore: cast_nullable_to_non_nullable
              as String?,
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String?,
      studentYear: freezed == studentYear
          ? _value.studentYear
          : studentYear // ignore: cast_nullable_to_non_nullable
              as int?,
      servantId: freezed == servantId
          ? _value.servantId
          : servantId // ignore: cast_nullable_to_non_nullable
              as int?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      oldId: freezed == oldId
          ? _value.oldId
          : oldId // ignore: cast_nullable_to_non_nullable
              as int?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as int?,
      attendances: freezed == attendances
          ? _value.attendances
          : attendances // ignore: cast_nullable_to_non_nullable
              as List<Attendances>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      servant: freezed == servant
          ? _value.servant
          : servant // ignore: cast_nullable_to_non_nullable
              as ServantDetails?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as Gender?,
      userPoints: freezed == userPoints
          ? _value.userPoints
          : userPoints // ignore: cast_nullable_to_non_nullable
              as List<UserPoints>?,
    ) as $Val);
  }

  /// Create a copy of ServeeUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  /// Create a copy of ServeeUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }

  /// Create a copy of ServeeUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServantDetailsCopyWith<$Res>? get servant {
    if (_value.servant == null) {
      return null;
    }

    return $ServantDetailsCopyWith<$Res>(_value.servant!, (value) {
      return _then(_value.copyWith(servant: value) as $Val);
    });
  }

  /// Create a copy of ServeeUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res>? get social {
    if (_value.social == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.social!, (value) {
      return _then(_value.copyWith(social: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServeeUpdateDataImplCopyWith<$Res>
    implements $ServeeUpdateDataCopyWith<$Res> {
  factory _$$ServeeUpdateDataImplCopyWith(_$ServeeUpdateDataImpl value,
          $Res Function(_$ServeeUpdateDataImpl) then) =
      __$$ServeeUpdateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? phone2,
      String? adress,
      String? birthdate,
      int? addNo,
      String? addStreet,
      int? addFloor,
      String? addBeside,
      String? father,
      String? university,
      String? faculty,
      int? studentYear,
      @JsonKey(name: 'khademId') int? servantId,
      int? groupId,
      String? notes,
      int? levelId,
      int? oldId,
      int? genderId,
      String? job,
      int? socialId,
      List<Attendances>? attendances,
      Gender? gender,
      Group? group,
      @JsonKey(name: 'khadem') ServantDetails? servant,
      Gender? social,
      List<UserPoints>? userPoints});

  @override
  $GenderCopyWith<$Res>? get gender;
  @override
  $GroupCopyWith<$Res>? get group;
  @override
  $ServantDetailsCopyWith<$Res>? get servant;
  @override
  $GenderCopyWith<$Res>? get social;
}

/// @nodoc
class __$$ServeeUpdateDataImplCopyWithImpl<$Res>
    extends _$ServeeUpdateDataCopyWithImpl<$Res, _$ServeeUpdateDataImpl>
    implements _$$ServeeUpdateDataImplCopyWith<$Res> {
  __$$ServeeUpdateDataImplCopyWithImpl(_$ServeeUpdateDataImpl _value,
      $Res Function(_$ServeeUpdateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServeeUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? phone2 = freezed,
    Object? adress = freezed,
    Object? birthdate = freezed,
    Object? addNo = freezed,
    Object? addStreet = freezed,
    Object? addFloor = freezed,
    Object? addBeside = freezed,
    Object? father = freezed,
    Object? university = freezed,
    Object? faculty = freezed,
    Object? studentYear = freezed,
    Object? servantId = freezed,
    Object? groupId = freezed,
    Object? notes = freezed,
    Object? levelId = freezed,
    Object? oldId = freezed,
    Object? genderId = freezed,
    Object? job = freezed,
    Object? socialId = freezed,
    Object? attendances = freezed,
    Object? gender = freezed,
    Object? group = freezed,
    Object? servant = freezed,
    Object? social = freezed,
    Object? userPoints = freezed,
  }) {
    return _then(_$ServeeUpdateDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phone2: freezed == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      addNo: freezed == addNo
          ? _value.addNo
          : addNo // ignore: cast_nullable_to_non_nullable
              as int?,
      addStreet: freezed == addStreet
          ? _value.addStreet
          : addStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      addFloor: freezed == addFloor
          ? _value.addFloor
          : addFloor // ignore: cast_nullable_to_non_nullable
              as int?,
      addBeside: freezed == addBeside
          ? _value.addBeside
          : addBeside // ignore: cast_nullable_to_non_nullable
              as String?,
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String?,
      studentYear: freezed == studentYear
          ? _value.studentYear
          : studentYear // ignore: cast_nullable_to_non_nullable
              as int?,
      servantId: freezed == servantId
          ? _value.servantId
          : servantId // ignore: cast_nullable_to_non_nullable
              as int?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      oldId: freezed == oldId
          ? _value.oldId
          : oldId // ignore: cast_nullable_to_non_nullable
              as int?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as int?,
      attendances: freezed == attendances
          ? _value._attendances
          : attendances // ignore: cast_nullable_to_non_nullable
              as List<Attendances>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      servant: freezed == servant
          ? _value.servant
          : servant // ignore: cast_nullable_to_non_nullable
              as ServantDetails?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as Gender?,
      userPoints: freezed == userPoints
          ? _value._userPoints
          : userPoints // ignore: cast_nullable_to_non_nullable
              as List<UserPoints>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServeeUpdateDataImpl implements _ServeeUpdateData {
  const _$ServeeUpdateDataImpl(
      {this.id,
      this.name,
      this.phone,
      this.phone2,
      this.adress,
      this.birthdate,
      this.addNo,
      this.addStreet,
      this.addFloor,
      this.addBeside,
      this.father,
      this.university,
      this.faculty,
      this.studentYear,
      @JsonKey(name: 'khademId') this.servantId,
      this.groupId,
      this.notes,
      this.levelId,
      this.oldId,
      this.genderId,
      this.job,
      this.socialId,
      final List<Attendances>? attendances,
      this.gender,
      this.group,
      @JsonKey(name: 'khadem') this.servant,
      this.social,
      final List<UserPoints>? userPoints})
      : _attendances = attendances,
        _userPoints = userPoints;

  factory _$ServeeUpdateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServeeUpdateDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? phone2;
  @override
  final String? adress;
  @override
  final String? birthdate;
  @override
  final int? addNo;
  @override
  final String? addStreet;
  @override
  final int? addFloor;
  @override
  final String? addBeside;
  @override
  final String? father;
  @override
  final String? university;
  @override
  final String? faculty;
  @override
  final int? studentYear;
  @override
  @JsonKey(name: 'khademId')
  final int? servantId;
  @override
  final int? groupId;
  @override
  final String? notes;
  @override
  final int? levelId;
  @override
  final int? oldId;
  @override
  final int? genderId;
  @override
  final String? job;
  @override
  final int? socialId;
  final List<Attendances>? _attendances;
  @override
  List<Attendances>? get attendances {
    final value = _attendances;
    if (value == null) return null;
    if (_attendances is EqualUnmodifiableListView) return _attendances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Gender? gender;
  @override
  final Group? group;
  @override
  @JsonKey(name: 'khadem')
  final ServantDetails? servant;
  @override
  final Gender? social;
  final List<UserPoints>? _userPoints;
  @override
  List<UserPoints>? get userPoints {
    final value = _userPoints;
    if (value == null) return null;
    if (_userPoints is EqualUnmodifiableListView) return _userPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServeeUpdateData(id: $id, name: $name, phone: $phone, phone2: $phone2, adress: $adress, birthdate: $birthdate, addNo: $addNo, addStreet: $addStreet, addFloor: $addFloor, addBeside: $addBeside, father: $father, university: $university, faculty: $faculty, studentYear: $studentYear, servantId: $servantId, groupId: $groupId, notes: $notes, levelId: $levelId, oldId: $oldId, genderId: $genderId, job: $job, socialId: $socialId, attendances: $attendances, gender: $gender, group: $group, servant: $servant, social: $social, userPoints: $userPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServeeUpdateDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.addNo, addNo) || other.addNo == addNo) &&
            (identical(other.addStreet, addStreet) ||
                other.addStreet == addStreet) &&
            (identical(other.addFloor, addFloor) ||
                other.addFloor == addFloor) &&
            (identical(other.addBeside, addBeside) ||
                other.addBeside == addBeside) &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.studentYear, studentYear) ||
                other.studentYear == studentYear) &&
            (identical(other.servantId, servantId) ||
                other.servantId == servantId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.oldId, oldId) || other.oldId == oldId) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.socialId, socialId) ||
                other.socialId == socialId) &&
            const DeepCollectionEquality()
                .equals(other._attendances, _attendances) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.servant, servant) || other.servant == servant) &&
            (identical(other.social, social) || other.social == social) &&
            const DeepCollectionEquality()
                .equals(other._userPoints, _userPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        phone,
        phone2,
        adress,
        birthdate,
        addNo,
        addStreet,
        addFloor,
        addBeside,
        father,
        university,
        faculty,
        studentYear,
        servantId,
        groupId,
        notes,
        levelId,
        oldId,
        genderId,
        job,
        socialId,
        const DeepCollectionEquality().hash(_attendances),
        gender,
        group,
        servant,
        social,
        const DeepCollectionEquality().hash(_userPoints)
      ]);

  /// Create a copy of ServeeUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServeeUpdateDataImplCopyWith<_$ServeeUpdateDataImpl> get copyWith =>
      __$$ServeeUpdateDataImplCopyWithImpl<_$ServeeUpdateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServeeUpdateDataImplToJson(
      this,
    );
  }
}

abstract class _ServeeUpdateData implements ServeeUpdateData {
  const factory _ServeeUpdateData(
      {final int? id,
      final String? name,
      final String? phone,
      final String? phone2,
      final String? adress,
      final String? birthdate,
      final int? addNo,
      final String? addStreet,
      final int? addFloor,
      final String? addBeside,
      final String? father,
      final String? university,
      final String? faculty,
      final int? studentYear,
      @JsonKey(name: 'khademId') final int? servantId,
      final int? groupId,
      final String? notes,
      final int? levelId,
      final int? oldId,
      final int? genderId,
      final String? job,
      final int? socialId,
      final List<Attendances>? attendances,
      final Gender? gender,
      final Group? group,
      @JsonKey(name: 'khadem') final ServantDetails? servant,
      final Gender? social,
      final List<UserPoints>? userPoints}) = _$ServeeUpdateDataImpl;

  factory _ServeeUpdateData.fromJson(Map<String, dynamic> json) =
      _$ServeeUpdateDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get phone2;
  @override
  String? get adress;
  @override
  String? get birthdate;
  @override
  int? get addNo;
  @override
  String? get addStreet;
  @override
  int? get addFloor;
  @override
  String? get addBeside;
  @override
  String? get father;
  @override
  String? get university;
  @override
  String? get faculty;
  @override
  int? get studentYear;
  @override
  @JsonKey(name: 'khademId')
  int? get servantId;
  @override
  int? get groupId;
  @override
  String? get notes;
  @override
  int? get levelId;
  @override
  int? get oldId;
  @override
  int? get genderId;
  @override
  String? get job;
  @override
  int? get socialId;
  @override
  List<Attendances>? get attendances;
  @override
  Gender? get gender;
  @override
  Group? get group;
  @override
  @JsonKey(name: 'khadem')
  ServantDetails? get servant;
  @override
  Gender? get social;
  @override
  List<UserPoints>? get userPoints;

  /// Create a copy of ServeeUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServeeUpdateDataImplCopyWith<_$ServeeUpdateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attendances _$AttendancesFromJson(Map<String, dynamic> json) {
  return _Attendances.fromJson(json);
}

/// @nodoc
mixin _$Attendances {
  int? get attId => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdomeId')
  int? get serveeId => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  Time? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdome')
  String? get servee => throw _privateConstructorUsedError;

  /// Serializes this Attendances to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attendances
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendancesCopyWith<Attendances> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendancesCopyWith<$Res> {
  factory $AttendancesCopyWith(
          Attendances value, $Res Function(Attendances) then) =
      _$AttendancesCopyWithImpl<$Res, Attendances>;
  @useResult
  $Res call(
      {int? attId,
      @JsonKey(name: 'makhdomeId') int? serveeId,
      String? date,
      Time? time,
      @JsonKey(name: 'makhdome') String? servee});

  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class _$AttendancesCopyWithImpl<$Res, $Val extends Attendances>
    implements $AttendancesCopyWith<$Res> {
  _$AttendancesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attendances
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attId = freezed,
    Object? serveeId = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? servee = freezed,
  }) {
    return _then(_value.copyWith(
      attId: freezed == attId
          ? _value.attId
          : attId // ignore: cast_nullable_to_non_nullable
              as int?,
      serveeId: freezed == serveeId
          ? _value.serveeId
          : serveeId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      servee: freezed == servee
          ? _value.servee
          : servee // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Attendances
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendancesImplCopyWith<$Res>
    implements $AttendancesCopyWith<$Res> {
  factory _$$AttendancesImplCopyWith(
          _$AttendancesImpl value, $Res Function(_$AttendancesImpl) then) =
      __$$AttendancesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? attId,
      @JsonKey(name: 'makhdomeId') int? serveeId,
      String? date,
      Time? time,
      @JsonKey(name: 'makhdome') String? servee});

  @override
  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class __$$AttendancesImplCopyWithImpl<$Res>
    extends _$AttendancesCopyWithImpl<$Res, _$AttendancesImpl>
    implements _$$AttendancesImplCopyWith<$Res> {
  __$$AttendancesImplCopyWithImpl(
      _$AttendancesImpl _value, $Res Function(_$AttendancesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attendances
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attId = freezed,
    Object? serveeId = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? servee = freezed,
  }) {
    return _then(_$AttendancesImpl(
      attId: freezed == attId
          ? _value.attId
          : attId // ignore: cast_nullable_to_non_nullable
              as int?,
      serveeId: freezed == serveeId
          ? _value.serveeId
          : serveeId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      servee: freezed == servee
          ? _value.servee
          : servee // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendancesImpl implements _Attendances {
  const _$AttendancesImpl(
      {this.attId,
      @JsonKey(name: 'makhdomeId') this.serveeId,
      this.date,
      this.time,
      @JsonKey(name: 'makhdome') this.servee});

  factory _$AttendancesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendancesImplFromJson(json);

  @override
  final int? attId;
  @override
  @JsonKey(name: 'makhdomeId')
  final int? serveeId;
  @override
  final String? date;
  @override
  final Time? time;
  @override
  @JsonKey(name: 'makhdome')
  final String? servee;

  @override
  String toString() {
    return 'Attendances(attId: $attId, serveeId: $serveeId, date: $date, time: $time, servee: $servee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendancesImpl &&
            (identical(other.attId, attId) || other.attId == attId) &&
            (identical(other.serveeId, serveeId) ||
                other.serveeId == serveeId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.servee, servee) || other.servee == servee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attId, serveeId, date, time, servee);

  /// Create a copy of Attendances
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendancesImplCopyWith<_$AttendancesImpl> get copyWith =>
      __$$AttendancesImplCopyWithImpl<_$AttendancesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendancesImplToJson(
      this,
    );
  }
}

abstract class _Attendances implements Attendances {
  const factory _Attendances(
      {final int? attId,
      @JsonKey(name: 'makhdomeId') final int? serveeId,
      final String? date,
      final Time? time,
      @JsonKey(name: 'makhdome') final String? servee}) = _$AttendancesImpl;

  factory _Attendances.fromJson(Map<String, dynamic> json) =
      _$AttendancesImpl.fromJson;

  @override
  int? get attId;
  @override
  @JsonKey(name: 'makhdomeId')
  int? get serveeId;
  @override
  String? get date;
  @override
  Time? get time;
  @override
  @JsonKey(name: 'makhdome')
  String? get servee;

  /// Create a copy of Attendances
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendancesImplCopyWith<_$AttendancesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  int? get ticks => throw _privateConstructorUsedError;
  int? get days => throw _privateConstructorUsedError;
  int? get hours => throw _privateConstructorUsedError;
  int? get milliseconds => throw _privateConstructorUsedError;
  int? get microseconds => throw _privateConstructorUsedError;
  int? get nanoseconds => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  int? get seconds => throw _privateConstructorUsedError;
  int? get totalDays => throw _privateConstructorUsedError;
  int? get totalHours => throw _privateConstructorUsedError;
  int? get totalMilliseconds => throw _privateConstructorUsedError;
  int? get totalMicroseconds => throw _privateConstructorUsedError;
  int? get totalNanoseconds => throw _privateConstructorUsedError;
  int? get totalMinutes => throw _privateConstructorUsedError;
  int? get totalSeconds => throw _privateConstructorUsedError;

  /// Serializes this Time to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call(
      {int? ticks,
      int? days,
      int? hours,
      int? milliseconds,
      int? microseconds,
      int? nanoseconds,
      int? minutes,
      int? seconds,
      int? totalDays,
      int? totalHours,
      int? totalMilliseconds,
      int? totalMicroseconds,
      int? totalNanoseconds,
      int? totalMinutes,
      int? totalSeconds});
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticks = freezed,
    Object? days = freezed,
    Object? hours = freezed,
    Object? milliseconds = freezed,
    Object? microseconds = freezed,
    Object? nanoseconds = freezed,
    Object? minutes = freezed,
    Object? seconds = freezed,
    Object? totalDays = freezed,
    Object? totalHours = freezed,
    Object? totalMilliseconds = freezed,
    Object? totalMicroseconds = freezed,
    Object? totalNanoseconds = freezed,
    Object? totalMinutes = freezed,
    Object? totalSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      ticks: freezed == ticks
          ? _value.ticks
          : ticks // ignore: cast_nullable_to_non_nullable
              as int?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      milliseconds: freezed == milliseconds
          ? _value.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      microseconds: freezed == microseconds
          ? _value.microseconds
          : microseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      nanoseconds: freezed == nanoseconds
          ? _value.nanoseconds
          : nanoseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDays: freezed == totalDays
          ? _value.totalDays
          : totalDays // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMilliseconds: freezed == totalMilliseconds
          ? _value.totalMilliseconds
          : totalMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMicroseconds: freezed == totalMicroseconds
          ? _value.totalMicroseconds
          : totalMicroseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNanoseconds: freezed == totalNanoseconds
          ? _value.totalNanoseconds
          : totalNanoseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMinutes: freezed == totalMinutes
          ? _value.totalMinutes
          : totalMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSeconds: freezed == totalSeconds
          ? _value.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeImplCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$TimeImplCopyWith(
          _$TimeImpl value, $Res Function(_$TimeImpl) then) =
      __$$TimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? ticks,
      int? days,
      int? hours,
      int? milliseconds,
      int? microseconds,
      int? nanoseconds,
      int? minutes,
      int? seconds,
      int? totalDays,
      int? totalHours,
      int? totalMilliseconds,
      int? totalMicroseconds,
      int? totalNanoseconds,
      int? totalMinutes,
      int? totalSeconds});
}

/// @nodoc
class __$$TimeImplCopyWithImpl<$Res>
    extends _$TimeCopyWithImpl<$Res, _$TimeImpl>
    implements _$$TimeImplCopyWith<$Res> {
  __$$TimeImplCopyWithImpl(_$TimeImpl _value, $Res Function(_$TimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticks = freezed,
    Object? days = freezed,
    Object? hours = freezed,
    Object? milliseconds = freezed,
    Object? microseconds = freezed,
    Object? nanoseconds = freezed,
    Object? minutes = freezed,
    Object? seconds = freezed,
    Object? totalDays = freezed,
    Object? totalHours = freezed,
    Object? totalMilliseconds = freezed,
    Object? totalMicroseconds = freezed,
    Object? totalNanoseconds = freezed,
    Object? totalMinutes = freezed,
    Object? totalSeconds = freezed,
  }) {
    return _then(_$TimeImpl(
      ticks: freezed == ticks
          ? _value.ticks
          : ticks // ignore: cast_nullable_to_non_nullable
              as int?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      milliseconds: freezed == milliseconds
          ? _value.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      microseconds: freezed == microseconds
          ? _value.microseconds
          : microseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      nanoseconds: freezed == nanoseconds
          ? _value.nanoseconds
          : nanoseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDays: freezed == totalDays
          ? _value.totalDays
          : totalDays // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMilliseconds: freezed == totalMilliseconds
          ? _value.totalMilliseconds
          : totalMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMicroseconds: freezed == totalMicroseconds
          ? _value.totalMicroseconds
          : totalMicroseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNanoseconds: freezed == totalNanoseconds
          ? _value.totalNanoseconds
          : totalNanoseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMinutes: freezed == totalMinutes
          ? _value.totalMinutes
          : totalMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSeconds: freezed == totalSeconds
          ? _value.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeImpl implements _Time {
  const _$TimeImpl(
      {this.ticks,
      this.days,
      this.hours,
      this.milliseconds,
      this.microseconds,
      this.nanoseconds,
      this.minutes,
      this.seconds,
      this.totalDays,
      this.totalHours,
      this.totalMilliseconds,
      this.totalMicroseconds,
      this.totalNanoseconds,
      this.totalMinutes,
      this.totalSeconds});

  factory _$TimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeImplFromJson(json);

  @override
  final int? ticks;
  @override
  final int? days;
  @override
  final int? hours;
  @override
  final int? milliseconds;
  @override
  final int? microseconds;
  @override
  final int? nanoseconds;
  @override
  final int? minutes;
  @override
  final int? seconds;
  @override
  final int? totalDays;
  @override
  final int? totalHours;
  @override
  final int? totalMilliseconds;
  @override
  final int? totalMicroseconds;
  @override
  final int? totalNanoseconds;
  @override
  final int? totalMinutes;
  @override
  final int? totalSeconds;

  @override
  String toString() {
    return 'Time(ticks: $ticks, days: $days, hours: $hours, milliseconds: $milliseconds, microseconds: $microseconds, nanoseconds: $nanoseconds, minutes: $minutes, seconds: $seconds, totalDays: $totalDays, totalHours: $totalHours, totalMilliseconds: $totalMilliseconds, totalMicroseconds: $totalMicroseconds, totalNanoseconds: $totalNanoseconds, totalMinutes: $totalMinutes, totalSeconds: $totalSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeImpl &&
            (identical(other.ticks, ticks) || other.ticks == ticks) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.milliseconds, milliseconds) ||
                other.milliseconds == milliseconds) &&
            (identical(other.microseconds, microseconds) ||
                other.microseconds == microseconds) &&
            (identical(other.nanoseconds, nanoseconds) ||
                other.nanoseconds == nanoseconds) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.totalDays, totalDays) ||
                other.totalDays == totalDays) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.totalMilliseconds, totalMilliseconds) ||
                other.totalMilliseconds == totalMilliseconds) &&
            (identical(other.totalMicroseconds, totalMicroseconds) ||
                other.totalMicroseconds == totalMicroseconds) &&
            (identical(other.totalNanoseconds, totalNanoseconds) ||
                other.totalNanoseconds == totalNanoseconds) &&
            (identical(other.totalMinutes, totalMinutes) ||
                other.totalMinutes == totalMinutes) &&
            (identical(other.totalSeconds, totalSeconds) ||
                other.totalSeconds == totalSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ticks,
      days,
      hours,
      milliseconds,
      microseconds,
      nanoseconds,
      minutes,
      seconds,
      totalDays,
      totalHours,
      totalMilliseconds,
      totalMicroseconds,
      totalNanoseconds,
      totalMinutes,
      totalSeconds);

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      __$$TimeImplCopyWithImpl<_$TimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeImplToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  const factory _Time(
      {final int? ticks,
      final int? days,
      final int? hours,
      final int? milliseconds,
      final int? microseconds,
      final int? nanoseconds,
      final int? minutes,
      final int? seconds,
      final int? totalDays,
      final int? totalHours,
      final int? totalMilliseconds,
      final int? totalMicroseconds,
      final int? totalNanoseconds,
      final int? totalMinutes,
      final int? totalSeconds}) = _$TimeImpl;

  factory _Time.fromJson(Map<String, dynamic> json) = _$TimeImpl.fromJson;

  @override
  int? get ticks;
  @override
  int? get days;
  @override
  int? get hours;
  @override
  int? get milliseconds;
  @override
  int? get microseconds;
  @override
  int? get nanoseconds;
  @override
  int? get minutes;
  @override
  int? get seconds;
  @override
  int? get totalDays;
  @override
  int? get totalHours;
  @override
  int? get totalMilliseconds;
  @override
  int? get totalMicroseconds;
  @override
  int? get totalNanoseconds;
  @override
  int? get totalMinutes;
  @override
  int? get totalSeconds;

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Gender _$GenderFromJson(Map<String, dynamic> json) {
  return _Gender.fromJson(json);
}

/// @nodoc
mixin _$Gender {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdoms')
  List<String>? get servees => throw _privateConstructorUsedError;

  /// Serializes this Gender to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Gender
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenderCopyWith<Gender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res, Gender>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'makhdoms') List<String>? servees});
}

/// @nodoc
class _$GenderCopyWithImpl<$Res, $Val extends Gender>
    implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Gender
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? servees = freezed,
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
      servees: freezed == servees
          ? _value.servees
          : servees // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenderImplCopyWith<$Res> implements $GenderCopyWith<$Res> {
  factory _$$GenderImplCopyWith(
          _$GenderImpl value, $Res Function(_$GenderImpl) then) =
      __$$GenderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'makhdoms') List<String>? servees});
}

/// @nodoc
class __$$GenderImplCopyWithImpl<$Res>
    extends _$GenderCopyWithImpl<$Res, _$GenderImpl>
    implements _$$GenderImplCopyWith<$Res> {
  __$$GenderImplCopyWithImpl(
      _$GenderImpl _value, $Res Function(_$GenderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gender
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? servees = freezed,
  }) {
    return _then(_$GenderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      servees: freezed == servees
          ? _value._servees
          : servees // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenderImpl implements _Gender {
  const _$GenderImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'makhdoms') final List<String>? servees})
      : _servees = servees;

  factory _$GenderImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenderImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<String>? _servees;
  @override
  @JsonKey(name: 'makhdoms')
  List<String>? get servees {
    final value = _servees;
    if (value == null) return null;
    if (_servees is EqualUnmodifiableListView) return _servees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Gender(id: $id, name: $name, servees: $servees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._servees, _servees));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_servees));

  /// Create a copy of Gender
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderImplCopyWith<_$GenderImpl> get copyWith =>
      __$$GenderImplCopyWithImpl<_$GenderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenderImplToJson(
      this,
    );
  }
}

abstract class _Gender implements Gender {
  const factory _Gender(
      {final int? id,
      final String? name,
      @JsonKey(name: 'makhdoms') final List<String>? servees}) = _$GenderImpl;

  factory _Gender.fromJson(Map<String, dynamic> json) = _$GenderImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'makhdoms')
  List<String>? get servees;

  /// Create a copy of Gender
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenderImplCopyWith<_$GenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
mixin _$Group {
  int? get groupId => throw _privateConstructorUsedError;
  String? get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'khadems')
  List<ServantDetails>? get servants => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdoms')
  List<String>? get servees => throw _privateConstructorUsedError;

  /// Serializes this Group to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call(
      {int? groupId,
      String? groupName,
      @JsonKey(name: 'khadems') List<ServantDetails>? servants,
      @JsonKey(name: 'makhdoms') List<String>? servees});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? groupName = freezed,
    Object? servants = freezed,
    Object? servees = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      servants: freezed == servants
          ? _value.servants
          : servants // ignore: cast_nullable_to_non_nullable
              as List<ServantDetails>?,
      servees: freezed == servees
          ? _value.servees
          : servees // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupImplCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
          _$GroupImpl value, $Res Function(_$GroupImpl) then) =
      __$$GroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? groupId,
      String? groupName,
      @JsonKey(name: 'khadems') List<ServantDetails>? servants,
      @JsonKey(name: 'makhdoms') List<String>? servees});
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$GroupCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
      _$GroupImpl _value, $Res Function(_$GroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? groupName = freezed,
    Object? servants = freezed,
    Object? servees = freezed,
  }) {
    return _then(_$GroupImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      servants: freezed == servants
          ? _value._servants
          : servants // ignore: cast_nullable_to_non_nullable
              as List<ServantDetails>?,
      servees: freezed == servees
          ? _value._servees
          : servees // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupImpl implements _Group {
  const _$GroupImpl(
      {this.groupId,
      this.groupName,
      @JsonKey(name: 'khadems') final List<ServantDetails>? servants,
      @JsonKey(name: 'makhdoms') final List<String>? servees})
      : _servants = servants,
        _servees = servees;

  factory _$GroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupImplFromJson(json);

  @override
  final int? groupId;
  @override
  final String? groupName;
  final List<ServantDetails>? _servants;
  @override
  @JsonKey(name: 'khadems')
  List<ServantDetails>? get servants {
    final value = _servants;
    if (value == null) return null;
    if (_servants is EqualUnmodifiableListView) return _servants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _servees;
  @override
  @JsonKey(name: 'makhdoms')
  List<String>? get servees {
    final value = _servees;
    if (value == null) return null;
    if (_servees is EqualUnmodifiableListView) return _servees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Group(groupId: $groupId, groupName: $groupName, servants: $servants, servees: $servees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality().equals(other._servants, _servants) &&
            const DeepCollectionEquality().equals(other._servees, _servees));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupId,
      groupName,
      const DeepCollectionEquality().hash(_servants),
      const DeepCollectionEquality().hash(_servees));

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      __$$GroupImplCopyWithImpl<_$GroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupImplToJson(
      this,
    );
  }
}

abstract class _Group implements Group {
  const factory _Group(
      {final int? groupId,
      final String? groupName,
      @JsonKey(name: 'khadems') final List<ServantDetails>? servants,
      @JsonKey(name: 'makhdoms') final List<String>? servees}) = _$GroupImpl;

  factory _Group.fromJson(Map<String, dynamic> json) = _$GroupImpl.fromJson;

  @override
  int? get groupId;
  @override
  String? get groupName;
  @override
  @JsonKey(name: 'khadems')
  List<ServantDetails>? get servants;
  @override
  @JsonKey(name: 'makhdoms')
  List<String>? get servees;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServantDetails _$ServantDetailsFromJson(Map<String, dynamic> json) {
  return _ServantDetails.fromJson(json);
}

/// @nodoc
mixin _$ServantDetails {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone1 => throw _privateConstructorUsedError;
  String? get phone2 => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get groupId => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  int? get levelId => throw _privateConstructorUsedError;
  List<Eftkads>? get eftkads => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdoms')
  List<String>? get servees => throw _privateConstructorUsedError;
  List<Users>? get users => throw _privateConstructorUsedError;

  /// Serializes this ServantDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServantDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServantDetailsCopyWith<ServantDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServantDetailsCopyWith<$Res> {
  factory $ServantDetailsCopyWith(
          ServantDetails value, $Res Function(ServantDetails) then) =
      _$ServantDetailsCopyWithImpl<$Res, ServantDetails>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone1,
      String? phone2,
      String? adress,
      String? image,
      int? groupId,
      String? birthDate,
      int? levelId,
      List<Eftkads>? eftkads,
      String? group,
      @JsonKey(name: 'makhdoms') List<String>? servees,
      List<Users>? users});
}

/// @nodoc
class _$ServantDetailsCopyWithImpl<$Res, $Val extends ServantDetails>
    implements $ServantDetailsCopyWith<$Res> {
  _$ServantDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServantDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone1 = freezed,
    Object? phone2 = freezed,
    Object? adress = freezed,
    Object? image = freezed,
    Object? groupId = freezed,
    Object? birthDate = freezed,
    Object? levelId = freezed,
    Object? eftkads = freezed,
    Object? group = freezed,
    Object? servees = freezed,
    Object? users = freezed,
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
      phone2: freezed == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      eftkads: freezed == eftkads
          ? _value.eftkads
          : eftkads // ignore: cast_nullable_to_non_nullable
              as List<Eftkads>?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      servees: freezed == servees
          ? _value.servees
          : servees // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServantDetailsImplCopyWith<$Res>
    implements $ServantDetailsCopyWith<$Res> {
  factory _$$ServantDetailsImplCopyWith(_$ServantDetailsImpl value,
          $Res Function(_$ServantDetailsImpl) then) =
      __$$ServantDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone1,
      String? phone2,
      String? adress,
      String? image,
      int? groupId,
      String? birthDate,
      int? levelId,
      List<Eftkads>? eftkads,
      String? group,
      @JsonKey(name: 'makhdoms') List<String>? servees,
      List<Users>? users});
}

/// @nodoc
class __$$ServantDetailsImplCopyWithImpl<$Res>
    extends _$ServantDetailsCopyWithImpl<$Res, _$ServantDetailsImpl>
    implements _$$ServantDetailsImplCopyWith<$Res> {
  __$$ServantDetailsImplCopyWithImpl(
      _$ServantDetailsImpl _value, $Res Function(_$ServantDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServantDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone1 = freezed,
    Object? phone2 = freezed,
    Object? adress = freezed,
    Object? image = freezed,
    Object? groupId = freezed,
    Object? birthDate = freezed,
    Object? levelId = freezed,
    Object? eftkads = freezed,
    Object? group = freezed,
    Object? servees = freezed,
    Object? users = freezed,
  }) {
    return _then(_$ServantDetailsImpl(
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
      phone2: freezed == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      eftkads: freezed == eftkads
          ? _value._eftkads
          : eftkads // ignore: cast_nullable_to_non_nullable
              as List<Eftkads>?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      servees: freezed == servees
          ? _value._servees
          : servees // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServantDetailsImpl implements _ServantDetails {
  const _$ServantDetailsImpl(
      {this.id,
      this.name,
      this.phone1,
      this.phone2,
      this.adress,
      this.image,
      this.groupId,
      this.birthDate,
      this.levelId,
      final List<Eftkads>? eftkads,
      this.group,
      @JsonKey(name: 'makhdoms') final List<String>? servees,
      final List<Users>? users})
      : _eftkads = eftkads,
        _servees = servees,
        _users = users;

  factory _$ServantDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServantDetailsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone1;
  @override
  final String? phone2;
  @override
  final String? adress;
  @override
  final String? image;
  @override
  final int? groupId;
  @override
  final String? birthDate;
  @override
  final int? levelId;
  final List<Eftkads>? _eftkads;
  @override
  List<Eftkads>? get eftkads {
    final value = _eftkads;
    if (value == null) return null;
    if (_eftkads is EqualUnmodifiableListView) return _eftkads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? group;
  final List<String>? _servees;
  @override
  @JsonKey(name: 'makhdoms')
  List<String>? get servees {
    final value = _servees;
    if (value == null) return null;
    if (_servees is EqualUnmodifiableListView) return _servees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Users>? _users;
  @override
  List<Users>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServantDetails(id: $id, name: $name, phone1: $phone1, phone2: $phone2, adress: $adress, image: $image, groupId: $groupId, birthDate: $birthDate, levelId: $levelId, eftkads: $eftkads, group: $group, servees: $servees, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServantDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone1, phone1) || other.phone1 == phone1) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            const DeepCollectionEquality().equals(other._eftkads, _eftkads) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._servees, _servees) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      phone1,
      phone2,
      adress,
      image,
      groupId,
      birthDate,
      levelId,
      const DeepCollectionEquality().hash(_eftkads),
      group,
      const DeepCollectionEquality().hash(_servees),
      const DeepCollectionEquality().hash(_users));

  /// Create a copy of ServantDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServantDetailsImplCopyWith<_$ServantDetailsImpl> get copyWith =>
      __$$ServantDetailsImplCopyWithImpl<_$ServantDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServantDetailsImplToJson(
      this,
    );
  }
}

abstract class _ServantDetails implements ServantDetails {
  const factory _ServantDetails(
      {final int? id,
      final String? name,
      final String? phone1,
      final String? phone2,
      final String? adress,
      final String? image,
      final int? groupId,
      final String? birthDate,
      final int? levelId,
      final List<Eftkads>? eftkads,
      final String? group,
      @JsonKey(name: 'makhdoms') final List<String>? servees,
      final List<Users>? users}) = _$ServantDetailsImpl;

  factory _ServantDetails.fromJson(Map<String, dynamic> json) =
      _$ServantDetailsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone1;
  @override
  String? get phone2;
  @override
  String? get adress;
  @override
  String? get image;
  @override
  int? get groupId;
  @override
  String? get birthDate;
  @override
  int? get levelId;
  @override
  List<Eftkads>? get eftkads;
  @override
  String? get group;
  @override
  @JsonKey(name: 'makhdoms')
  List<String>? get servees;
  @override
  List<Users>? get users;

  /// Create a copy of ServantDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServantDetailsImplCopyWith<_$ServantDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Eftkads _$EftkadsFromJson(Map<String, dynamic> json) {
  return _Eftkads.fromJson(json);
}

/// @nodoc
mixin _$Eftkads {
  int? get id => throw _privateConstructorUsedError;
  String? get eftkadDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdomId')
  int? get serveeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'khademId')
  int? get servantId => throw _privateConstructorUsedError;
  int? get eftkadStatues => throw _privateConstructorUsedError;
  EftkadStatuesNavigation? get eftkadStatuesNavigation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'khadem')
  String? get servant => throw _privateConstructorUsedError;

  /// Serializes this Eftkads to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Eftkads
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EftkadsCopyWith<Eftkads> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EftkadsCopyWith<$Res> {
  factory $EftkadsCopyWith(Eftkads value, $Res Function(Eftkads) then) =
      _$EftkadsCopyWithImpl<$Res, Eftkads>;
  @useResult
  $Res call(
      {int? id,
      String? eftkadDate,
      @JsonKey(name: 'makhdomId') int? serveeId,
      @JsonKey(name: 'khademId') int? servantId,
      int? eftkadStatues,
      EftkadStatuesNavigation? eftkadStatuesNavigation,
      @JsonKey(name: 'khadem') String? servant});

  $EftkadStatuesNavigationCopyWith<$Res>? get eftkadStatuesNavigation;
}

/// @nodoc
class _$EftkadsCopyWithImpl<$Res, $Val extends Eftkads>
    implements $EftkadsCopyWith<$Res> {
  _$EftkadsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Eftkads
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eftkadDate = freezed,
    Object? serveeId = freezed,
    Object? servantId = freezed,
    Object? eftkadStatues = freezed,
    Object? eftkadStatuesNavigation = freezed,
    Object? servant = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      eftkadDate: freezed == eftkadDate
          ? _value.eftkadDate
          : eftkadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      serveeId: freezed == serveeId
          ? _value.serveeId
          : serveeId // ignore: cast_nullable_to_non_nullable
              as int?,
      servantId: freezed == servantId
          ? _value.servantId
          : servantId // ignore: cast_nullable_to_non_nullable
              as int?,
      eftkadStatues: freezed == eftkadStatues
          ? _value.eftkadStatues
          : eftkadStatues // ignore: cast_nullable_to_non_nullable
              as int?,
      eftkadStatuesNavigation: freezed == eftkadStatuesNavigation
          ? _value.eftkadStatuesNavigation
          : eftkadStatuesNavigation // ignore: cast_nullable_to_non_nullable
              as EftkadStatuesNavigation?,
      servant: freezed == servant
          ? _value.servant
          : servant // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Eftkads
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EftkadStatuesNavigationCopyWith<$Res>? get eftkadStatuesNavigation {
    if (_value.eftkadStatuesNavigation == null) {
      return null;
    }

    return $EftkadStatuesNavigationCopyWith<$Res>(
        _value.eftkadStatuesNavigation!, (value) {
      return _then(_value.copyWith(eftkadStatuesNavigation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EftkadsImplCopyWith<$Res> implements $EftkadsCopyWith<$Res> {
  factory _$$EftkadsImplCopyWith(
          _$EftkadsImpl value, $Res Function(_$EftkadsImpl) then) =
      __$$EftkadsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? eftkadDate,
      @JsonKey(name: 'makhdomId') int? serveeId,
      @JsonKey(name: 'khademId') int? servantId,
      int? eftkadStatues,
      EftkadStatuesNavigation? eftkadStatuesNavigation,
      @JsonKey(name: 'khadem') String? servant});

  @override
  $EftkadStatuesNavigationCopyWith<$Res>? get eftkadStatuesNavigation;
}

/// @nodoc
class __$$EftkadsImplCopyWithImpl<$Res>
    extends _$EftkadsCopyWithImpl<$Res, _$EftkadsImpl>
    implements _$$EftkadsImplCopyWith<$Res> {
  __$$EftkadsImplCopyWithImpl(
      _$EftkadsImpl _value, $Res Function(_$EftkadsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Eftkads
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eftkadDate = freezed,
    Object? serveeId = freezed,
    Object? servantId = freezed,
    Object? eftkadStatues = freezed,
    Object? eftkadStatuesNavigation = freezed,
    Object? servant = freezed,
  }) {
    return _then(_$EftkadsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      eftkadDate: freezed == eftkadDate
          ? _value.eftkadDate
          : eftkadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      serveeId: freezed == serveeId
          ? _value.serveeId
          : serveeId // ignore: cast_nullable_to_non_nullable
              as int?,
      servantId: freezed == servantId
          ? _value.servantId
          : servantId // ignore: cast_nullable_to_non_nullable
              as int?,
      eftkadStatues: freezed == eftkadStatues
          ? _value.eftkadStatues
          : eftkadStatues // ignore: cast_nullable_to_non_nullable
              as int?,
      eftkadStatuesNavigation: freezed == eftkadStatuesNavigation
          ? _value.eftkadStatuesNavigation
          : eftkadStatuesNavigation // ignore: cast_nullable_to_non_nullable
              as EftkadStatuesNavigation?,
      servant: freezed == servant
          ? _value.servant
          : servant // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EftkadsImpl implements _Eftkads {
  const _$EftkadsImpl(
      {this.id,
      this.eftkadDate,
      @JsonKey(name: 'makhdomId') this.serveeId,
      @JsonKey(name: 'khademId') this.servantId,
      this.eftkadStatues,
      this.eftkadStatuesNavigation,
      @JsonKey(name: 'khadem') this.servant});

  factory _$EftkadsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EftkadsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? eftkadDate;
  @override
  @JsonKey(name: 'makhdomId')
  final int? serveeId;
  @override
  @JsonKey(name: 'khademId')
  final int? servantId;
  @override
  final int? eftkadStatues;
  @override
  final EftkadStatuesNavigation? eftkadStatuesNavigation;
  @override
  @JsonKey(name: 'khadem')
  final String? servant;

  @override
  String toString() {
    return 'Eftkads(id: $id, eftkadDate: $eftkadDate, serveeId: $serveeId, servantId: $servantId, eftkadStatues: $eftkadStatues, eftkadStatuesNavigation: $eftkadStatuesNavigation, servant: $servant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EftkadsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eftkadDate, eftkadDate) ||
                other.eftkadDate == eftkadDate) &&
            (identical(other.serveeId, serveeId) ||
                other.serveeId == serveeId) &&
            (identical(other.servantId, servantId) ||
                other.servantId == servantId) &&
            (identical(other.eftkadStatues, eftkadStatues) ||
                other.eftkadStatues == eftkadStatues) &&
            (identical(
                    other.eftkadStatuesNavigation, eftkadStatuesNavigation) ||
                other.eftkadStatuesNavigation == eftkadStatuesNavigation) &&
            (identical(other.servant, servant) || other.servant == servant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, eftkadDate, serveeId,
      servantId, eftkadStatues, eftkadStatuesNavigation, servant);

  /// Create a copy of Eftkads
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EftkadsImplCopyWith<_$EftkadsImpl> get copyWith =>
      __$$EftkadsImplCopyWithImpl<_$EftkadsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EftkadsImplToJson(
      this,
    );
  }
}

abstract class _Eftkads implements Eftkads {
  const factory _Eftkads(
      {final int? id,
      final String? eftkadDate,
      @JsonKey(name: 'makhdomId') final int? serveeId,
      @JsonKey(name: 'khademId') final int? servantId,
      final int? eftkadStatues,
      final EftkadStatuesNavigation? eftkadStatuesNavigation,
      @JsonKey(name: 'khadem') final String? servant}) = _$EftkadsImpl;

  factory _Eftkads.fromJson(Map<String, dynamic> json) = _$EftkadsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get eftkadDate;
  @override
  @JsonKey(name: 'makhdomId')
  int? get serveeId;
  @override
  @JsonKey(name: 'khademId')
  int? get servantId;
  @override
  int? get eftkadStatues;
  @override
  EftkadStatuesNavigation? get eftkadStatuesNavigation;
  @override
  @JsonKey(name: 'khadem')
  String? get servant;

  /// Create a copy of Eftkads
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EftkadsImplCopyWith<_$EftkadsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EftkadStatuesNavigation _$EftkadStatuesNavigationFromJson(
    Map<String, dynamic> json) {
  return _EftkadStatuesNavigation.fromJson(json);
}

/// @nodoc
mixin _$EftkadStatuesNavigation {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  List<String>? get eftkads => throw _privateConstructorUsedError;

  /// Serializes this EftkadStatuesNavigation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EftkadStatuesNavigation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EftkadStatuesNavigationCopyWith<EftkadStatuesNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EftkadStatuesNavigationCopyWith<$Res> {
  factory $EftkadStatuesNavigationCopyWith(EftkadStatuesNavigation value,
          $Res Function(EftkadStatuesNavigation) then) =
      _$EftkadStatuesNavigationCopyWithImpl<$Res, EftkadStatuesNavigation>;
  @useResult
  $Res call({int? id, String? code, String? value, List<String>? eftkads});
}

/// @nodoc
class _$EftkadStatuesNavigationCopyWithImpl<$Res,
        $Val extends EftkadStatuesNavigation>
    implements $EftkadStatuesNavigationCopyWith<$Res> {
  _$EftkadStatuesNavigationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EftkadStatuesNavigation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? value = freezed,
    Object? eftkads = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      eftkads: freezed == eftkads
          ? _value.eftkads
          : eftkads // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EftkadStatuesNavigationImplCopyWith<$Res>
    implements $EftkadStatuesNavigationCopyWith<$Res> {
  factory _$$EftkadStatuesNavigationImplCopyWith(
          _$EftkadStatuesNavigationImpl value,
          $Res Function(_$EftkadStatuesNavigationImpl) then) =
      __$$EftkadStatuesNavigationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? code, String? value, List<String>? eftkads});
}

/// @nodoc
class __$$EftkadStatuesNavigationImplCopyWithImpl<$Res>
    extends _$EftkadStatuesNavigationCopyWithImpl<$Res,
        _$EftkadStatuesNavigationImpl>
    implements _$$EftkadStatuesNavigationImplCopyWith<$Res> {
  __$$EftkadStatuesNavigationImplCopyWithImpl(
      _$EftkadStatuesNavigationImpl _value,
      $Res Function(_$EftkadStatuesNavigationImpl) _then)
      : super(_value, _then);

  /// Create a copy of EftkadStatuesNavigation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? value = freezed,
    Object? eftkads = freezed,
  }) {
    return _then(_$EftkadStatuesNavigationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      eftkads: freezed == eftkads
          ? _value._eftkads
          : eftkads // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EftkadStatuesNavigationImpl implements _EftkadStatuesNavigation {
  const _$EftkadStatuesNavigationImpl(
      {this.id, this.code, this.value, final List<String>? eftkads})
      : _eftkads = eftkads;

  factory _$EftkadStatuesNavigationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EftkadStatuesNavigationImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? value;
  final List<String>? _eftkads;
  @override
  List<String>? get eftkads {
    final value = _eftkads;
    if (value == null) return null;
    if (_eftkads is EqualUnmodifiableListView) return _eftkads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EftkadStatuesNavigation(id: $id, code: $code, value: $value, eftkads: $eftkads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EftkadStatuesNavigationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._eftkads, _eftkads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, value,
      const DeepCollectionEquality().hash(_eftkads));

  /// Create a copy of EftkadStatuesNavigation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EftkadStatuesNavigationImplCopyWith<_$EftkadStatuesNavigationImpl>
      get copyWith => __$$EftkadStatuesNavigationImplCopyWithImpl<
          _$EftkadStatuesNavigationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EftkadStatuesNavigationImplToJson(
      this,
    );
  }
}

abstract class _EftkadStatuesNavigation implements EftkadStatuesNavigation {
  const factory _EftkadStatuesNavigation(
      {final int? id,
      final String? code,
      final String? value,
      final List<String>? eftkads}) = _$EftkadStatuesNavigationImpl;

  factory _EftkadStatuesNavigation.fromJson(Map<String, dynamic> json) =
      _$EftkadStatuesNavigationImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get value;
  @override
  List<String>? get eftkads;

  /// Create a copy of EftkadStatuesNavigation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EftkadStatuesNavigationImplCopyWith<_$EftkadStatuesNavigationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Users _$UsersFromJson(Map<String, dynamic> json) {
  return _Users.fromJson(json);
}

/// @nodoc
mixin _$Users {
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'khademId')
  int? get servantId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get userRole => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  int? get roleId => throw _privateConstructorUsedError;
  int? get levelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'khadem')
  String? get servant => throw _privateConstructorUsedError;
  Level? get level => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;

  /// Serializes this Users to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res, Users>;
  @useResult
  $Res call(
      {int? userId,
      @JsonKey(name: 'khademId') int? servantId,
      String? userName,
      String? password,
      String? userRole,
      bool? isActive,
      int? roleId,
      int? levelId,
      @JsonKey(name: 'khadem') String? servant,
      Level? level,
      Role? role});

  $LevelCopyWith<$Res>? get level;
  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class _$UsersCopyWithImpl<$Res, $Val extends Users>
    implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? servantId = freezed,
    Object? userName = freezed,
    Object? password = freezed,
    Object? userRole = freezed,
    Object? isActive = freezed,
    Object? roleId = freezed,
    Object? levelId = freezed,
    Object? servant = freezed,
    Object? level = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      servantId: freezed == servantId
          ? _value.servantId
          : servantId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      servant: freezed == servant
          ? _value.servant
          : servant // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ) as $Val);
  }

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LevelCopyWith<$Res>? get level {
    if (_value.level == null) {
      return null;
    }

    return $LevelCopyWith<$Res>(_value.level!, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RoleCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UsersImplCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$$UsersImplCopyWith(
          _$UsersImpl value, $Res Function(_$UsersImpl) then) =
      __$$UsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      @JsonKey(name: 'khademId') int? servantId,
      String? userName,
      String? password,
      String? userRole,
      bool? isActive,
      int? roleId,
      int? levelId,
      @JsonKey(name: 'khadem') String? servant,
      Level? level,
      Role? role});

  @override
  $LevelCopyWith<$Res>? get level;
  @override
  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class __$$UsersImplCopyWithImpl<$Res>
    extends _$UsersCopyWithImpl<$Res, _$UsersImpl>
    implements _$$UsersImplCopyWith<$Res> {
  __$$UsersImplCopyWithImpl(
      _$UsersImpl _value, $Res Function(_$UsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? servantId = freezed,
    Object? userName = freezed,
    Object? password = freezed,
    Object? userRole = freezed,
    Object? isActive = freezed,
    Object? roleId = freezed,
    Object? levelId = freezed,
    Object? servant = freezed,
    Object? level = freezed,
    Object? role = freezed,
  }) {
    return _then(_$UsersImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      servantId: freezed == servantId
          ? _value.servantId
          : servantId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      servant: freezed == servant
          ? _value.servant
          : servant // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersImpl implements _Users {
  const _$UsersImpl(
      {this.userId,
      @JsonKey(name: 'khademId') this.servantId,
      this.userName,
      this.password,
      this.userRole,
      this.isActive,
      this.roleId,
      this.levelId,
      @JsonKey(name: 'khadem') this.servant,
      this.level,
      this.role});

  factory _$UsersImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersImplFromJson(json);

  @override
  final int? userId;
  @override
  @JsonKey(name: 'khademId')
  final int? servantId;
  @override
  final String? userName;
  @override
  final String? password;
  @override
  final String? userRole;
  @override
  final bool? isActive;
  @override
  final int? roleId;
  @override
  final int? levelId;
  @override
  @JsonKey(name: 'khadem')
  final String? servant;
  @override
  final Level? level;
  @override
  final Role? role;

  @override
  String toString() {
    return 'Users(userId: $userId, servantId: $servantId, userName: $userName, password: $password, userRole: $userRole, isActive: $isActive, roleId: $roleId, levelId: $levelId, servant: $servant, level: $level, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.servantId, servantId) ||
                other.servantId == servantId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.servant, servant) || other.servant == servant) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, servantId, userName,
      password, userRole, isActive, roleId, levelId, servant, level, role);

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersImplCopyWith<_$UsersImpl> get copyWith =>
      __$$UsersImplCopyWithImpl<_$UsersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersImplToJson(
      this,
    );
  }
}

abstract class _Users implements Users {
  const factory _Users(
      {final int? userId,
      @JsonKey(name: 'khademId') final int? servantId,
      final String? userName,
      final String? password,
      final String? userRole,
      final bool? isActive,
      final int? roleId,
      final int? levelId,
      @JsonKey(name: 'khadem') final String? servant,
      final Level? level,
      final Role? role}) = _$UsersImpl;

  factory _Users.fromJson(Map<String, dynamic> json) = _$UsersImpl.fromJson;

  @override
  int? get userId;
  @override
  @JsonKey(name: 'khademId')
  int? get servantId;
  @override
  String? get userName;
  @override
  String? get password;
  @override
  String? get userRole;
  @override
  bool? get isActive;
  @override
  int? get roleId;
  @override
  int? get levelId;
  @override
  @JsonKey(name: 'khadem')
  String? get servant;
  @override
  Level? get level;
  @override
  Role? get role;

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersImplCopyWith<_$UsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Level _$LevelFromJson(Map<String, dynamic> json) {
  return _Level.fromJson(json);
}

/// @nodoc
mixin _$Level {
  int? get id => throw _privateConstructorUsedError;
  String? get levelName => throw _privateConstructorUsedError;
  List<String>? get users => throw _privateConstructorUsedError;

  /// Serializes this Level to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LevelCopyWith<Level> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelCopyWith<$Res> {
  factory $LevelCopyWith(Level value, $Res Function(Level) then) =
      _$LevelCopyWithImpl<$Res, Level>;
  @useResult
  $Res call({int? id, String? levelName, List<String>? users});
}

/// @nodoc
class _$LevelCopyWithImpl<$Res, $Val extends Level>
    implements $LevelCopyWith<$Res> {
  _$LevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? levelName = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      levelName: freezed == levelName
          ? _value.levelName
          : levelName // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelImplCopyWith<$Res> implements $LevelCopyWith<$Res> {
  factory _$$LevelImplCopyWith(
          _$LevelImpl value, $Res Function(_$LevelImpl) then) =
      __$$LevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? levelName, List<String>? users});
}

/// @nodoc
class __$$LevelImplCopyWithImpl<$Res>
    extends _$LevelCopyWithImpl<$Res, _$LevelImpl>
    implements _$$LevelImplCopyWith<$Res> {
  __$$LevelImplCopyWithImpl(
      _$LevelImpl _value, $Res Function(_$LevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? levelName = freezed,
    Object? users = freezed,
  }) {
    return _then(_$LevelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      levelName: freezed == levelName
          ? _value.levelName
          : levelName // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelImpl implements _Level {
  const _$LevelImpl({this.id, this.levelName, final List<String>? users})
      : _users = users;

  factory _$LevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? levelName;
  final List<String>? _users;
  @override
  List<String>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Level(id: $id, levelName: $levelName, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.levelName, levelName) ||
                other.levelName == levelName) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, levelName, const DeepCollectionEquality().hash(_users));

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelImplCopyWith<_$LevelImpl> get copyWith =>
      __$$LevelImplCopyWithImpl<_$LevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelImplToJson(
      this,
    );
  }
}

abstract class _Level implements Level {
  const factory _Level(
      {final int? id,
      final String? levelName,
      final List<String>? users}) = _$LevelImpl;

  factory _Level.fromJson(Map<String, dynamic> json) = _$LevelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get levelName;
  @override
  List<String>? get users;

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LevelImplCopyWith<_$LevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  int? get id => throw _privateConstructorUsedError;
  String? get roleName => throw _privateConstructorUsedError;
  List<RolePermissions>? get rolePermissions =>
      throw _privateConstructorUsedError;
  List<String>? get users => throw _privateConstructorUsedError;

  /// Serializes this Role to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call(
      {int? id,
      String? roleName,
      List<RolePermissions>? rolePermissions,
      List<String>? users});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roleName = freezed,
    Object? rolePermissions = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roleName: freezed == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
      rolePermissions: freezed == rolePermissions
          ? _value.rolePermissions
          : rolePermissions // ignore: cast_nullable_to_non_nullable
              as List<RolePermissions>?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleImplCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$RoleImplCopyWith(
          _$RoleImpl value, $Res Function(_$RoleImpl) then) =
      __$$RoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? roleName,
      List<RolePermissions>? rolePermissions,
      List<String>? users});
}

/// @nodoc
class __$$RoleImplCopyWithImpl<$Res>
    extends _$RoleCopyWithImpl<$Res, _$RoleImpl>
    implements _$$RoleImplCopyWith<$Res> {
  __$$RoleImplCopyWithImpl(_$RoleImpl _value, $Res Function(_$RoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roleName = freezed,
    Object? rolePermissions = freezed,
    Object? users = freezed,
  }) {
    return _then(_$RoleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roleName: freezed == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
      rolePermissions: freezed == rolePermissions
          ? _value._rolePermissions
          : rolePermissions // ignore: cast_nullable_to_non_nullable
              as List<RolePermissions>?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleImpl implements _Role {
  const _$RoleImpl(
      {this.id,
      this.roleName,
      final List<RolePermissions>? rolePermissions,
      final List<String>? users})
      : _rolePermissions = rolePermissions,
        _users = users;

  factory _$RoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleImplFromJson(json);

  @override
  final int? id;
  @override
  final String? roleName;
  final List<RolePermissions>? _rolePermissions;
  @override
  List<RolePermissions>? get rolePermissions {
    final value = _rolePermissions;
    if (value == null) return null;
    if (_rolePermissions is EqualUnmodifiableListView) return _rolePermissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _users;
  @override
  List<String>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Role(id: $id, roleName: $roleName, rolePermissions: $rolePermissions, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            const DeepCollectionEquality()
                .equals(other._rolePermissions, _rolePermissions) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roleName,
      const DeepCollectionEquality().hash(_rolePermissions),
      const DeepCollectionEquality().hash(_users));

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      __$$RoleImplCopyWithImpl<_$RoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleImplToJson(
      this,
    );
  }
}

abstract class _Role implements Role {
  const factory _Role(
      {final int? id,
      final String? roleName,
      final List<RolePermissions>? rolePermissions,
      final List<String>? users}) = _$RoleImpl;

  factory _Role.fromJson(Map<String, dynamic> json) = _$RoleImpl.fromJson;

  @override
  int? get id;
  @override
  String? get roleName;
  @override
  List<RolePermissions>? get rolePermissions;
  @override
  List<String>? get users;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RolePermissions _$RolePermissionsFromJson(Map<String, dynamic> json) {
  return _RolePermissions.fromJson(json);
}

/// @nodoc
mixin _$RolePermissions {
  int? get id => throw _privateConstructorUsedError;
  int? get roleId => throw _privateConstructorUsedError;
  int? get permissionId => throw _privateConstructorUsedError;
  Permission? get permission => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Serializes this RolePermissions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RolePermissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RolePermissionsCopyWith<RolePermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RolePermissionsCopyWith<$Res> {
  factory $RolePermissionsCopyWith(
          RolePermissions value, $Res Function(RolePermissions) then) =
      _$RolePermissionsCopyWithImpl<$Res, RolePermissions>;
  @useResult
  $Res call(
      {int? id,
      int? roleId,
      int? permissionId,
      Permission? permission,
      String? role});

  $PermissionCopyWith<$Res>? get permission;
}

/// @nodoc
class _$RolePermissionsCopyWithImpl<$Res, $Val extends RolePermissions>
    implements $RolePermissionsCopyWith<$Res> {
  _$RolePermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RolePermissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roleId = freezed,
    Object? permissionId = freezed,
    Object? permission = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      permissionId: freezed == permissionId
          ? _value.permissionId
          : permissionId // ignore: cast_nullable_to_non_nullable
              as int?,
      permission: freezed == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as Permission?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RolePermissions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionCopyWith<$Res>? get permission {
    if (_value.permission == null) {
      return null;
    }

    return $PermissionCopyWith<$Res>(_value.permission!, (value) {
      return _then(_value.copyWith(permission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RolePermissionsImplCopyWith<$Res>
    implements $RolePermissionsCopyWith<$Res> {
  factory _$$RolePermissionsImplCopyWith(_$RolePermissionsImpl value,
          $Res Function(_$RolePermissionsImpl) then) =
      __$$RolePermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? roleId,
      int? permissionId,
      Permission? permission,
      String? role});

  @override
  $PermissionCopyWith<$Res>? get permission;
}

/// @nodoc
class __$$RolePermissionsImplCopyWithImpl<$Res>
    extends _$RolePermissionsCopyWithImpl<$Res, _$RolePermissionsImpl>
    implements _$$RolePermissionsImplCopyWith<$Res> {
  __$$RolePermissionsImplCopyWithImpl(
      _$RolePermissionsImpl _value, $Res Function(_$RolePermissionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RolePermissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roleId = freezed,
    Object? permissionId = freezed,
    Object? permission = freezed,
    Object? role = freezed,
  }) {
    return _then(_$RolePermissionsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      permissionId: freezed == permissionId
          ? _value.permissionId
          : permissionId // ignore: cast_nullable_to_non_nullable
              as int?,
      permission: freezed == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as Permission?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RolePermissionsImpl implements _RolePermissions {
  const _$RolePermissionsImpl(
      {this.id, this.roleId, this.permissionId, this.permission, this.role});

  factory _$RolePermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RolePermissionsImplFromJson(json);

  @override
  final int? id;
  @override
  final int? roleId;
  @override
  final int? permissionId;
  @override
  final Permission? permission;
  @override
  final String? role;

  @override
  String toString() {
    return 'RolePermissions(id: $id, roleId: $roleId, permissionId: $permissionId, permission: $permission, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RolePermissionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.permissionId, permissionId) ||
                other.permissionId == permissionId) &&
            (identical(other.permission, permission) ||
                other.permission == permission) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, roleId, permissionId, permission, role);

  /// Create a copy of RolePermissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RolePermissionsImplCopyWith<_$RolePermissionsImpl> get copyWith =>
      __$$RolePermissionsImplCopyWithImpl<_$RolePermissionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RolePermissionsImplToJson(
      this,
    );
  }
}

abstract class _RolePermissions implements RolePermissions {
  const factory _RolePermissions(
      {final int? id,
      final int? roleId,
      final int? permissionId,
      final Permission? permission,
      final String? role}) = _$RolePermissionsImpl;

  factory _RolePermissions.fromJson(Map<String, dynamic> json) =
      _$RolePermissionsImpl.fromJson;

  @override
  int? get id;
  @override
  int? get roleId;
  @override
  int? get permissionId;
  @override
  Permission? get permission;
  @override
  String? get role;

  /// Create a copy of RolePermissions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RolePermissionsImplCopyWith<_$RolePermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Permission _$PermissionFromJson(Map<String, dynamic> json) {
  return _Permission.fromJson(json);
}

/// @nodoc
mixin _$Permission {
  int? get id => throw _privateConstructorUsedError;
  String? get permissionName => throw _privateConstructorUsedError;
  String? get permissionCategory => throw _privateConstructorUsedError;
  List<String>? get rolePermissions => throw _privateConstructorUsedError;

  /// Serializes this Permission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionCopyWith<Permission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionCopyWith<$Res> {
  factory $PermissionCopyWith(
          Permission value, $Res Function(Permission) then) =
      _$PermissionCopyWithImpl<$Res, Permission>;
  @useResult
  $Res call(
      {int? id,
      String? permissionName,
      String? permissionCategory,
      List<String>? rolePermissions});
}

/// @nodoc
class _$PermissionCopyWithImpl<$Res, $Val extends Permission>
    implements $PermissionCopyWith<$Res> {
  _$PermissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? permissionName = freezed,
    Object? permissionCategory = freezed,
    Object? rolePermissions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      permissionName: freezed == permissionName
          ? _value.permissionName
          : permissionName // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionCategory: freezed == permissionCategory
          ? _value.permissionCategory
          : permissionCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      rolePermissions: freezed == rolePermissions
          ? _value.rolePermissions
          : rolePermissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionImplCopyWith<$Res>
    implements $PermissionCopyWith<$Res> {
  factory _$$PermissionImplCopyWith(
          _$PermissionImpl value, $Res Function(_$PermissionImpl) then) =
      __$$PermissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? permissionName,
      String? permissionCategory,
      List<String>? rolePermissions});
}

/// @nodoc
class __$$PermissionImplCopyWithImpl<$Res>
    extends _$PermissionCopyWithImpl<$Res, _$PermissionImpl>
    implements _$$PermissionImplCopyWith<$Res> {
  __$$PermissionImplCopyWithImpl(
      _$PermissionImpl _value, $Res Function(_$PermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? permissionName = freezed,
    Object? permissionCategory = freezed,
    Object? rolePermissions = freezed,
  }) {
    return _then(_$PermissionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      permissionName: freezed == permissionName
          ? _value.permissionName
          : permissionName // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionCategory: freezed == permissionCategory
          ? _value.permissionCategory
          : permissionCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      rolePermissions: freezed == rolePermissions
          ? _value._rolePermissions
          : rolePermissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionImpl implements _Permission {
  const _$PermissionImpl(
      {this.id,
      this.permissionName,
      this.permissionCategory,
      final List<String>? rolePermissions})
      : _rolePermissions = rolePermissions;

  factory _$PermissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionImplFromJson(json);

  @override
  final int? id;
  @override
  final String? permissionName;
  @override
  final String? permissionCategory;
  final List<String>? _rolePermissions;
  @override
  List<String>? get rolePermissions {
    final value = _rolePermissions;
    if (value == null) return null;
    if (_rolePermissions is EqualUnmodifiableListView) return _rolePermissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Permission(id: $id, permissionName: $permissionName, permissionCategory: $permissionCategory, rolePermissions: $rolePermissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.permissionName, permissionName) ||
                other.permissionName == permissionName) &&
            (identical(other.permissionCategory, permissionCategory) ||
                other.permissionCategory == permissionCategory) &&
            const DeepCollectionEquality()
                .equals(other._rolePermissions, _rolePermissions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      permissionName,
      permissionCategory,
      const DeepCollectionEquality().hash(_rolePermissions));

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionImplCopyWith<_$PermissionImpl> get copyWith =>
      __$$PermissionImplCopyWithImpl<_$PermissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionImplToJson(
      this,
    );
  }
}

abstract class _Permission implements Permission {
  const factory _Permission(
      {final int? id,
      final String? permissionName,
      final String? permissionCategory,
      final List<String>? rolePermissions}) = _$PermissionImpl;

  factory _Permission.fromJson(Map<String, dynamic> json) =
      _$PermissionImpl.fromJson;

  @override
  int? get id;
  @override
  String? get permissionName;
  @override
  String? get permissionCategory;
  @override
  List<String>? get rolePermissions;

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionImplCopyWith<_$PermissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPoints _$UserPointsFromJson(Map<String, dynamic> json) {
  return _UserPoints.fromJson(json);
}

/// @nodoc
mixin _$UserPoints {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdomId')
  int? get serveeId => throw _privateConstructorUsedError;
  int? get levelId => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  String? get creationData => throw _privateConstructorUsedError;
  String? get updatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'makhdom')
  String? get servee => throw _privateConstructorUsedError;

  /// Serializes this UserPoints to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPoints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPointsCopyWith<UserPoints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPointsCopyWith<$Res> {
  factory $UserPointsCopyWith(
          UserPoints value, $Res Function(UserPoints) then) =
      _$UserPointsCopyWithImpl<$Res, UserPoints>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'makhdomId') int? serveeId,
      int? levelId,
      int? points,
      String? creationData,
      String? updatedDate,
      @JsonKey(name: 'makhdom') String? servee});
}

/// @nodoc
class _$UserPointsCopyWithImpl<$Res, $Val extends UserPoints>
    implements $UserPointsCopyWith<$Res> {
  _$UserPointsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPoints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? serveeId = freezed,
    Object? levelId = freezed,
    Object? points = freezed,
    Object? creationData = freezed,
    Object? updatedDate = freezed,
    Object? servee = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      serveeId: freezed == serveeId
          ? _value.serveeId
          : serveeId // ignore: cast_nullable_to_non_nullable
              as int?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      creationData: freezed == creationData
          ? _value.creationData
          : creationData // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      servee: freezed == servee
          ? _value.servee
          : servee // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPointsImplCopyWith<$Res>
    implements $UserPointsCopyWith<$Res> {
  factory _$$UserPointsImplCopyWith(
          _$UserPointsImpl value, $Res Function(_$UserPointsImpl) then) =
      __$$UserPointsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'makhdomId') int? serveeId,
      int? levelId,
      int? points,
      String? creationData,
      String? updatedDate,
      @JsonKey(name: 'makhdom') String? servee});
}

/// @nodoc
class __$$UserPointsImplCopyWithImpl<$Res>
    extends _$UserPointsCopyWithImpl<$Res, _$UserPointsImpl>
    implements _$$UserPointsImplCopyWith<$Res> {
  __$$UserPointsImplCopyWithImpl(
      _$UserPointsImpl _value, $Res Function(_$UserPointsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPoints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? serveeId = freezed,
    Object? levelId = freezed,
    Object? points = freezed,
    Object? creationData = freezed,
    Object? updatedDate = freezed,
    Object? servee = freezed,
  }) {
    return _then(_$UserPointsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      serveeId: freezed == serveeId
          ? _value.serveeId
          : serveeId // ignore: cast_nullable_to_non_nullable
              as int?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      creationData: freezed == creationData
          ? _value.creationData
          : creationData // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      servee: freezed == servee
          ? _value.servee
          : servee // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPointsImpl implements _UserPoints {
  const _$UserPointsImpl(
      {this.id,
      @JsonKey(name: 'makhdomId') this.serveeId,
      this.levelId,
      this.points,
      this.creationData,
      this.updatedDate,
      @JsonKey(name: 'makhdom') this.servee});

  factory _$UserPointsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPointsImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'makhdomId')
  final int? serveeId;
  @override
  final int? levelId;
  @override
  final int? points;
  @override
  final String? creationData;
  @override
  final String? updatedDate;
  @override
  @JsonKey(name: 'makhdom')
  final String? servee;

  @override
  String toString() {
    return 'UserPoints(id: $id, serveeId: $serveeId, levelId: $levelId, points: $points, creationData: $creationData, updatedDate: $updatedDate, servee: $servee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPointsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serveeId, serveeId) ||
                other.serveeId == serveeId) &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.creationData, creationData) ||
                other.creationData == creationData) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.servee, servee) || other.servee == servee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, serveeId, levelId, points,
      creationData, updatedDate, servee);

  /// Create a copy of UserPoints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPointsImplCopyWith<_$UserPointsImpl> get copyWith =>
      __$$UserPointsImplCopyWithImpl<_$UserPointsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPointsImplToJson(
      this,
    );
  }
}

abstract class _UserPoints implements UserPoints {
  const factory _UserPoints(
      {final int? id,
      @JsonKey(name: 'makhdomId') final int? serveeId,
      final int? levelId,
      final int? points,
      final String? creationData,
      final String? updatedDate,
      @JsonKey(name: 'makhdom') final String? servee}) = _$UserPointsImpl;

  factory _UserPoints.fromJson(Map<String, dynamic> json) =
      _$UserPointsImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'makhdomId')
  int? get serveeId;
  @override
  int? get levelId;
  @override
  int? get points;
  @override
  String? get creationData;
  @override
  String? get updatedDate;
  @override
  @JsonKey(name: 'makhdom')
  String? get servee;

  /// Create a copy of UserPoints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPointsImplCopyWith<_$UserPointsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
