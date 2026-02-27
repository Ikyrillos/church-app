// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_servees_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyServeesModel _$MyServeesModelFromJson(Map<String, dynamic> json) {
  return _MyServeesModel.fromJson(json);
}

/// @nodoc
mixin _$MyServeesModel {
  String get code => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  List<MyServeesData>? get data => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  List<String> get listData => throw _privateConstructorUsedError;

  /// Serializes this MyServeesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyServeesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyServeesModelCopyWith<MyServeesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyServeesModelCopyWith<$Res> {
  factory $MyServeesModelCopyWith(
          MyServeesModel value, $Res Function(MyServeesModel) then) =
      _$MyServeesModelCopyWithImpl<$Res, MyServeesModel>;
  @useResult
  $Res call(
      {String code,
      String errorMsg,
      List<MyServeesData>? data,
      int count,
      int pageNo,
      bool success,
      List<String> listData});
}

/// @nodoc
class _$MyServeesModelCopyWithImpl<$Res, $Val extends MyServeesModel>
    implements $MyServeesModelCopyWith<$Res> {
  _$MyServeesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyServeesModel
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
              as List<MyServeesData>?,
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
}

/// @nodoc
abstract class _$$MyServeesModelImplCopyWith<$Res>
    implements $MyServeesModelCopyWith<$Res> {
  factory _$$MyServeesModelImplCopyWith(_$MyServeesModelImpl value,
          $Res Function(_$MyServeesModelImpl) then) =
      __$$MyServeesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String errorMsg,
      List<MyServeesData>? data,
      int count,
      int pageNo,
      bool success,
      List<String> listData});
}

/// @nodoc
class __$$MyServeesModelImplCopyWithImpl<$Res>
    extends _$MyServeesModelCopyWithImpl<$Res, _$MyServeesModelImpl>
    implements _$$MyServeesModelImplCopyWith<$Res> {
  __$$MyServeesModelImplCopyWithImpl(
      _$MyServeesModelImpl _value, $Res Function(_$MyServeesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyServeesModel
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
    return _then(_$MyServeesModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MyServeesData>?,
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
class _$MyServeesModelImpl implements _MyServeesModel {
  const _$MyServeesModelImpl(
      {this.code = '',
      this.errorMsg = '',
      final List<MyServeesData>? data,
      this.count = 0,
      this.pageNo = 0,
      this.success = false,
      final List<String> listData = const []})
      : _data = data,
        _listData = listData;

  factory _$MyServeesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyServeesModelImplFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String errorMsg;
  final List<MyServeesData>? _data;
  @override
  List<MyServeesData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'MyServeesModel(code: $code, errorMsg: $errorMsg, data: $data, count: $count, pageNo: $pageNo, success: $success, listData: $listData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyServeesModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._listData, _listData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      errorMsg,
      const DeepCollectionEquality().hash(_data),
      count,
      pageNo,
      success,
      const DeepCollectionEquality().hash(_listData));

  /// Create a copy of MyServeesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyServeesModelImplCopyWith<_$MyServeesModelImpl> get copyWith =>
      __$$MyServeesModelImplCopyWithImpl<_$MyServeesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyServeesModelImplToJson(
      this,
    );
  }
}

abstract class _MyServeesModel implements MyServeesModel {
  const factory _MyServeesModel(
      {final String code,
      final String errorMsg,
      final List<MyServeesData>? data,
      final int count,
      final int pageNo,
      final bool success,
      final List<String> listData}) = _$MyServeesModelImpl;

  factory _MyServeesModel.fromJson(Map<String, dynamic> json) =
      _$MyServeesModelImpl.fromJson;

  @override
  String get code;
  @override
  String get errorMsg;
  @override
  List<MyServeesData>? get data;
  @override
  int get count;
  @override
  int get pageNo;
  @override
  bool get success;
  @override
  List<String> get listData;

  /// Create a copy of MyServeesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyServeesModelImplCopyWith<_$MyServeesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyServeesData _$MyServeesDataFromJson(Map<String, dynamic> json) {
  return _MyServeesData.fromJson(json);
}

/// @nodoc
mixin _$MyServeesData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get phone2 => throw _privateConstructorUsedError;
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
  int? get genderId => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  int? get socialId => throw _privateConstructorUsedError;
  String? get lastAttendanceDate => throw _privateConstructorUsedError;
  String? get lastCallDate => throw _privateConstructorUsedError;

  /// Serializes this MyServeesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyServeesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyServeesDataCopyWith<MyServeesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyServeesDataCopyWith<$Res> {
  factory $MyServeesDataCopyWith(
          MyServeesData value, $Res Function(MyServeesData) then) =
      _$MyServeesDataCopyWithImpl<$Res, MyServeesData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? phone2,
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
      int? genderId,
      String? job,
      int? socialId,
      String? lastAttendanceDate,
      String? lastCallDate});
}

/// @nodoc
class _$MyServeesDataCopyWithImpl<$Res, $Val extends MyServeesData>
    implements $MyServeesDataCopyWith<$Res> {
  _$MyServeesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyServeesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? phone2 = freezed,
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
    Object? genderId = freezed,
    Object? job = freezed,
    Object? socialId = freezed,
    Object? lastAttendanceDate = freezed,
    Object? lastCallDate = freezed,
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
      lastAttendanceDate: freezed == lastAttendanceDate
          ? _value.lastAttendanceDate
          : lastAttendanceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastCallDate: freezed == lastCallDate
          ? _value.lastCallDate
          : lastCallDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyServeesDataImplCopyWith<$Res>
    implements $MyServeesDataCopyWith<$Res> {
  factory _$$MyServeesDataImplCopyWith(
          _$MyServeesDataImpl value, $Res Function(_$MyServeesDataImpl) then) =
      __$$MyServeesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? phone2,
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
      int? genderId,
      String? job,
      int? socialId,
      String? lastAttendanceDate,
      String? lastCallDate});
}

/// @nodoc
class __$$MyServeesDataImplCopyWithImpl<$Res>
    extends _$MyServeesDataCopyWithImpl<$Res, _$MyServeesDataImpl>
    implements _$$MyServeesDataImplCopyWith<$Res> {
  __$$MyServeesDataImplCopyWithImpl(
      _$MyServeesDataImpl _value, $Res Function(_$MyServeesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyServeesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? phone2 = freezed,
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
    Object? genderId = freezed,
    Object? job = freezed,
    Object? socialId = freezed,
    Object? lastAttendanceDate = freezed,
    Object? lastCallDate = freezed,
  }) {
    return _then(_$MyServeesDataImpl(
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
      lastAttendanceDate: freezed == lastAttendanceDate
          ? _value.lastAttendanceDate
          : lastAttendanceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastCallDate: freezed == lastCallDate
          ? _value.lastCallDate
          : lastCallDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyServeesDataImpl implements _MyServeesData {
  const _$MyServeesDataImpl(
      {this.id,
      this.name,
      this.phone,
      this.phone2,
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
      this.genderId,
      this.job,
      this.socialId,
      this.lastAttendanceDate,
      this.lastCallDate});

  factory _$MyServeesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyServeesDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? phone2;
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
  final int? genderId;
  @override
  final String? job;
  @override
  final int? socialId;
  @override
  final String? lastAttendanceDate;
  @override
  final String? lastCallDate;

  @override
  String toString() {
    return 'MyServeesData(id: $id, name: $name, phone: $phone, phone2: $phone2, birthdate: $birthdate, addNo: $addNo, addStreet: $addStreet, addFloor: $addFloor, addBeside: $addBeside, father: $father, university: $university, faculty: $faculty, studentYear: $studentYear, servantId: $servantId, groupId: $groupId, notes: $notes, levelId: $levelId, genderId: $genderId, job: $job, socialId: $socialId, lastAttendanceDate: $lastAttendanceDate, lastCallDate: $lastCallDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyServeesDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2) &&
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
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.socialId, socialId) ||
                other.socialId == socialId) &&
            (identical(other.lastAttendanceDate, lastAttendanceDate) ||
                other.lastAttendanceDate == lastAttendanceDate) &&
            (identical(other.lastCallDate, lastCallDate) ||
                other.lastCallDate == lastCallDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        phone,
        phone2,
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
        genderId,
        job,
        socialId,
        lastAttendanceDate,
        lastCallDate
      ]);

  /// Create a copy of MyServeesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyServeesDataImplCopyWith<_$MyServeesDataImpl> get copyWith =>
      __$$MyServeesDataImplCopyWithImpl<_$MyServeesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyServeesDataImplToJson(
      this,
    );
  }
}

abstract class _MyServeesData implements MyServeesData {
  const factory _MyServeesData(
      {final int? id,
      final String? name,
      final String? phone,
      final String? phone2,
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
      final int? genderId,
      final String? job,
      final int? socialId,
      final String? lastAttendanceDate,
      final String? lastCallDate}) = _$MyServeesDataImpl;

  factory _MyServeesData.fromJson(Map<String, dynamic> json) =
      _$MyServeesDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get phone2;
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
  int? get genderId;
  @override
  String? get job;
  @override
  int? get socialId;
  @override
  String? get lastAttendanceDate;
  @override
  String? get lastCallDate;

  /// Create a copy of MyServeesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyServeesDataImplCopyWith<_$MyServeesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
