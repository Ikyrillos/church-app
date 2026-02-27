import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:abosiefienapp/features/attendance/data/local/attendance_local_datasource.dart';
import 'package:abosiefienapp/features/attendance/repository/attendance_repository.dart';

part 'attendance_providers.g.dart';

/// Realm-backed datasource. Opens the Realm on creation, closes on dispose.
@Riverpod(keepAlive: true)
AttendanceLocalDatasource attendanceLocalDatasource(Ref ref) {
  final datasource = AttendanceLocalDatasource();
  ref.onDispose(datasource.close);
  return datasource;
}

/// High-level repository that coordinates remote API and local Realm storage.
@Riverpod(keepAlive: true)
AttendanceRepository attendanceRepository(Ref ref) {
  return AttendanceRepository(ref.watch(attendanceLocalDatasourceProvider));
}
