// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_makhdom_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddMakhdomState {
  List<ServantData>? get allKhodam => throw _privateConstructorUsedError;
  int get selectedKhadem => throw _privateConstructorUsedError;
  List<DropdownModel> get dropdownList => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of AddMakhdomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddMakhdomStateCopyWith<AddMakhdomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMakhdomStateCopyWith<$Res> {
  factory $AddMakhdomStateCopyWith(
          AddMakhdomState value, $Res Function(AddMakhdomState) then) =
      _$AddMakhdomStateCopyWithImpl<$Res, AddMakhdomState>;
  @useResult
  $Res call(
      {List<ServantData>? allKhodam,
      int selectedKhadem,
      List<DropdownModel> dropdownList,
      String birthdate,
      bool isLoading});
}

/// @nodoc
class _$AddMakhdomStateCopyWithImpl<$Res, $Val extends AddMakhdomState>
    implements $AddMakhdomStateCopyWith<$Res> {
  _$AddMakhdomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddMakhdomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allKhodam = freezed,
    Object? selectedKhadem = null,
    Object? dropdownList = null,
    Object? birthdate = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      allKhodam: freezed == allKhodam
          ? _value.allKhodam
          : allKhodam // ignore: cast_nullable_to_non_nullable
              as List<ServantData>?,
      selectedKhadem: null == selectedKhadem
          ? _value.selectedKhadem
          : selectedKhadem // ignore: cast_nullable_to_non_nullable
              as int,
      dropdownList: null == dropdownList
          ? _value.dropdownList
          : dropdownList // ignore: cast_nullable_to_non_nullable
              as List<DropdownModel>,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddMakhdomStateImplCopyWith<$Res>
    implements $AddMakhdomStateCopyWith<$Res> {
  factory _$$AddMakhdomStateImplCopyWith(_$AddMakhdomStateImpl value,
          $Res Function(_$AddMakhdomStateImpl) then) =
      __$$AddMakhdomStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ServantData>? allKhodam,
      int selectedKhadem,
      List<DropdownModel> dropdownList,
      String birthdate,
      bool isLoading});
}

/// @nodoc
class __$$AddMakhdomStateImplCopyWithImpl<$Res>
    extends _$AddMakhdomStateCopyWithImpl<$Res, _$AddMakhdomStateImpl>
    implements _$$AddMakhdomStateImplCopyWith<$Res> {
  __$$AddMakhdomStateImplCopyWithImpl(
      _$AddMakhdomStateImpl _value, $Res Function(_$AddMakhdomStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddMakhdomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allKhodam = freezed,
    Object? selectedKhadem = null,
    Object? dropdownList = null,
    Object? birthdate = null,
    Object? isLoading = null,
  }) {
    return _then(_$AddMakhdomStateImpl(
      allKhodam: freezed == allKhodam
          ? _value._allKhodam
          : allKhodam // ignore: cast_nullable_to_non_nullable
              as List<ServantData>?,
      selectedKhadem: null == selectedKhadem
          ? _value.selectedKhadem
          : selectedKhadem // ignore: cast_nullable_to_non_nullable
              as int,
      dropdownList: null == dropdownList
          ? _value._dropdownList
          : dropdownList // ignore: cast_nullable_to_non_nullable
              as List<DropdownModel>,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddMakhdomStateImpl implements _AddMakhdomState {
  const _$AddMakhdomStateImpl(
      {final List<ServantData>? allKhodam,
      this.selectedKhadem = 2,
      final List<DropdownModel> dropdownList = const <DropdownModel>[],
      this.birthdate = '',
      this.isLoading = false})
      : _allKhodam = allKhodam,
        _dropdownList = dropdownList;

  final List<ServantData>? _allKhodam;
  @override
  List<ServantData>? get allKhodam {
    final value = _allKhodam;
    if (value == null) return null;
    if (_allKhodam is EqualUnmodifiableListView) return _allKhodam;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int selectedKhadem;
  final List<DropdownModel> _dropdownList;
  @override
  @JsonKey()
  List<DropdownModel> get dropdownList {
    if (_dropdownList is EqualUnmodifiableListView) return _dropdownList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dropdownList);
  }

  @override
  @JsonKey()
  final String birthdate;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AddMakhdomState(allKhodam: $allKhodam, selectedKhadem: $selectedKhadem, dropdownList: $dropdownList, birthdate: $birthdate, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMakhdomStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allKhodam, _allKhodam) &&
            (identical(other.selectedKhadem, selectedKhadem) ||
                other.selectedKhadem == selectedKhadem) &&
            const DeepCollectionEquality()
                .equals(other._dropdownList, _dropdownList) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allKhodam),
      selectedKhadem,
      const DeepCollectionEquality().hash(_dropdownList),
      birthdate,
      isLoading);

  /// Create a copy of AddMakhdomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMakhdomStateImplCopyWith<_$AddMakhdomStateImpl> get copyWith =>
      __$$AddMakhdomStateImplCopyWithImpl<_$AddMakhdomStateImpl>(
          this, _$identity);
}

abstract class _AddMakhdomState implements AddMakhdomState {
  const factory _AddMakhdomState(
      {final List<ServantData>? allKhodam,
      final int selectedKhadem,
      final List<DropdownModel> dropdownList,
      final String birthdate,
      final bool isLoading}) = _$AddMakhdomStateImpl;

  @override
  List<ServantData>? get allKhodam;
  @override
  int get selectedKhadem;
  @override
  List<DropdownModel> get dropdownList;
  @override
  String get birthdate;
  @override
  bool get isLoading;

  /// Create a copy of AddMakhdomState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMakhdomStateImplCopyWith<_$AddMakhdomStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
