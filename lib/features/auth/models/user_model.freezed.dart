// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  UserData? get data => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  List<String> get listData => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {UserData? data,
      String code,
      String errorMsg,
      int count,
      int pageNo,
      bool success,
      List<String> listData});

  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? code = null,
    Object? errorMsg = null,
    Object? count = null,
    Object? pageNo = null,
    Object? success = null,
    Object? listData = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
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

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserData? data,
      String code,
      String errorMsg,
      int count,
      int pageNo,
      bool success,
      List<String> listData});

  @override
  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? code = null,
    Object? errorMsg = null,
    Object? count = null,
    Object? pageNo = null,
    Object? success = null,
    Object? listData = null,
  }) {
    return _then(_$UserModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.data,
      this.code = '',
      this.errorMsg = '',
      this.count = 0,
      this.pageNo = 0,
      this.success = false,
      final List<String> listData = const []})
      : _listData = listData;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final UserData? data;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String errorMsg;
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
    return 'UserModel(data: $data, code: $code, errorMsg: $errorMsg, count: $count, pageNo: $pageNo, success: $success, listData: $listData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._listData, _listData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, code, errorMsg, count,
      pageNo, success, const DeepCollectionEquality().hash(_listData));

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final UserData? data,
      final String code,
      final String errorMsg,
      final int count,
      final int pageNo,
      final bool success,
      final List<String> listData}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  UserData? get data;
  @override
  String get code;
  @override
  String get errorMsg;
  @override
  int get count;
  @override
  int get pageNo;
  @override
  bool get success;
  @override
  List<String> get listData;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'khademId')
  int get servantId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get roleId => throw _privateConstructorUsedError;
  String get roleName => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get levelId => throw _privateConstructorUsedError;
  List<Permissions> get permissions => throw _privateConstructorUsedError;

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'khademId') int servantId,
      String userName,
      bool isActive,
      int roleId,
      String roleName,
      String token,
      int levelId,
      List<Permissions> permissions});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? servantId = null,
    Object? userName = null,
    Object? isActive = null,
    Object? roleId = null,
    Object? roleName = null,
    Object? token = null,
    Object? levelId = null,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      servantId: null == servantId
          ? _value.servantId
          : servantId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permissions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'khademId') int servantId,
      String userName,
      bool isActive,
      int roleId,
      String roleName,
      String token,
      int levelId,
      List<Permissions> permissions});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? servantId = null,
    Object? userName = null,
    Object? isActive = null,
    Object? roleId = null,
    Object? roleName = null,
    Object? token = null,
    Object? levelId = null,
    Object? permissions = null,
  }) {
    return _then(_$UserDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      servantId: null == servantId
          ? _value.servantId
          : servantId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permissions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {this.userId = 0,
      @JsonKey(name: 'khademId') this.servantId = 0,
      this.userName = '',
      this.isActive = false,
      this.roleId = 0,
      this.roleName = '',
      this.token = '',
      this.levelId = 0,
      final List<Permissions> permissions = const []})
      : _permissions = permissions;

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey(name: 'khademId')
  final int servantId;
  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final int roleId;
  @override
  @JsonKey()
  final String roleName;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final int levelId;
  final List<Permissions> _permissions;
  @override
  @JsonKey()
  List<Permissions> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'UserData(userId: $userId, servantId: $servantId, userName: $userName, isActive: $isActive, roleId: $roleId, roleName: $roleName, token: $token, levelId: $levelId, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.servantId, servantId) ||
                other.servantId == servantId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      servantId,
      userName,
      isActive,
      roleId,
      roleName,
      token,
      levelId,
      const DeepCollectionEquality().hash(_permissions));

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {final int userId,
      @JsonKey(name: 'khademId') final int servantId,
      final String userName,
      final bool isActive,
      final int roleId,
      final String roleName,
      final String token,
      final int levelId,
      final List<Permissions> permissions}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  int get userId;
  @override
  @JsonKey(name: 'khademId')
  int get servantId;
  @override
  String get userName;
  @override
  bool get isActive;
  @override
  int get roleId;
  @override
  String get roleName;
  @override
  String get token;
  @override
  int get levelId;
  @override
  List<Permissions> get permissions;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return _Permissions.fromJson(json);
}

/// @nodoc
mixin _$Permissions {
  String get permissionName => throw _privateConstructorUsedError;

  /// Serializes this Permissions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionsCopyWith<Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsCopyWith<$Res> {
  factory $PermissionsCopyWith(
          Permissions value, $Res Function(Permissions) then) =
      _$PermissionsCopyWithImpl<$Res, Permissions>;
  @useResult
  $Res call({String permissionName});
}

/// @nodoc
class _$PermissionsCopyWithImpl<$Res, $Val extends Permissions>
    implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionName = null,
  }) {
    return _then(_value.copyWith(
      permissionName: null == permissionName
          ? _value.permissionName
          : permissionName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionsImplCopyWith<$Res>
    implements $PermissionsCopyWith<$Res> {
  factory _$$PermissionsImplCopyWith(
          _$PermissionsImpl value, $Res Function(_$PermissionsImpl) then) =
      __$$PermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String permissionName});
}

/// @nodoc
class __$$PermissionsImplCopyWithImpl<$Res>
    extends _$PermissionsCopyWithImpl<$Res, _$PermissionsImpl>
    implements _$$PermissionsImplCopyWith<$Res> {
  __$$PermissionsImplCopyWithImpl(
      _$PermissionsImpl _value, $Res Function(_$PermissionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionName = null,
  }) {
    return _then(_$PermissionsImpl(
      permissionName: null == permissionName
          ? _value.permissionName
          : permissionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionsImpl implements _Permissions {
  const _$PermissionsImpl({this.permissionName = ''});

  factory _$PermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionsImplFromJson(json);

  @override
  @JsonKey()
  final String permissionName;

  @override
  String toString() {
    return 'Permissions(permissionName: $permissionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsImpl &&
            (identical(other.permissionName, permissionName) ||
                other.permissionName == permissionName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, permissionName);

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionsImplCopyWith<_$PermissionsImpl> get copyWith =>
      __$$PermissionsImplCopyWithImpl<_$PermissionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionsImplToJson(
      this,
    );
  }
}

abstract class _Permissions implements Permissions {
  const factory _Permissions({final String permissionName}) = _$PermissionsImpl;

  factory _Permissions.fromJson(Map<String, dynamic> json) =
      _$PermissionsImpl.fromJson;

  @override
  String get permissionName;

  /// Create a copy of Permissions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionsImplCopyWith<_$PermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
