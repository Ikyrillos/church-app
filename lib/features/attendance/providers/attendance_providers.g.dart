// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$attendanceLocalDatasourceHash() =>
    r'3674bbc127bee4aaf9c155215397cf63010c7b3b';

/// Realm-backed datasource. Opens the Realm on creation, closes on dispose.
///
/// Copied from [attendanceLocalDatasource].
@ProviderFor(attendanceLocalDatasource)
final attendanceLocalDatasourceProvider =
    Provider<AttendanceLocalDatasource>.internal(
  attendanceLocalDatasource,
  name: r'attendanceLocalDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$attendanceLocalDatasourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AttendanceLocalDatasourceRef = ProviderRef<AttendanceLocalDatasource>;
String _$attendanceRepositoryHash() =>
    r'3fba1a30f6d6a09d221a9c49dd37b24eaadb620b';

/// High-level repository that coordinates remote API and local Realm storage.
///
/// Copied from [attendanceRepository].
@ProviderFor(attendanceRepository)
final attendanceRepositoryProvider = Provider<AttendanceRepository>.internal(
  attendanceRepository,
  name: r'attendanceRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$attendanceRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AttendanceRepositoryRef = ProviderRef<AttendanceRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
