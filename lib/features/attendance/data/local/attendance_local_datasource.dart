import 'dart:convert';

import 'package:realm/realm.dart';

import 'package:abosiefienapp/features/attendance/data/local/realm_objects/cached_name_realm.dart';
import 'package:abosiefienapp/features/attendance/data/local/realm_objects/pending_batch_realm.dart';
import 'package:abosiefienapp/features/attendance/domain/models/pending_batch.dart';
import 'package:abosiefienapp/features/attendance/models/add_attendance_model.dart';

/// All local-storage operations for the attendance feature, backed by Realm.
/// Has no knowledge of the API, business logic, or UI.
class AttendanceLocalDatasource {
  late final Realm _realm;

  AttendanceLocalDatasource() {
    final config = Configuration.local(
      [CachedName.schema, PendingBatchRealm.schema],
      schemaVersion: 1,
    );
    _realm = Realm(config);
  }

  void close() => _realm.close();

  // ── CachedNames ───────────────────────────────────────────────────────────

  /// Atomically replaces the entire names cache.
  void replaceAllNames(List<AddAttendanceModel> names) {
    _realm.write(() {
      _realm.deleteAll<CachedName>();
      _realm.addAll(names.map((n) => CachedName(n.id, n.name)));
    });
  }

  /// Returns up to [limit] names whose name contains [query] (case-insensitive).
  List<AddAttendanceModel> searchByName(String query, {int limit = 10}) {
    return _realm
        .query<CachedName>('name CONTAINS[c] \$0', [query])
        .take(limit)
        .map((r) => AddAttendanceModel(id: r.id, name: r.name))
        .toList();
  }

  /// Returns the name entry with [id], or `null` if not found.
  AddAttendanceModel? findById(int id) {
    final row = _realm.find<CachedName>(id);
    if (row == null) return null;
    return AddAttendanceModel(id: row.id, name: row.name);
  }

  /// Returns all cached names.
  List<AddAttendanceModel> getAllNames() {
    return _realm
        .all<CachedName>()
        .map((r) => AddAttendanceModel(id: r.id, name: r.name))
        .toList();
  }

  /// Returns the total number of cached names.
  int countNames() => _realm.all<CachedName>().length;

  // ── PendingAttendanceBatches ──────────────────────────────────────────────

  void insertPendingBatch(PendingBatch batch) {
    final realmObj = PendingBatchRealm(
      ObjectId(),
      batch.attendanceDate,
      jsonEncode(batch.makhdomsIds),
      batch.points,
      batch.createdAt,
    );
    _realm.write(() => _realm.add(realmObj));
  }

  List<PendingBatch> getPendingBatches() {
    return _realm
        .all<PendingBatchRealm>()
        .map((r) => PendingBatch(
              id: r.id.hexString,
              attendanceDate: r.attendanceDate,
              makhdomsIds:
                  List<int>.from(jsonDecode(r.makhdomsIdsJson) as List),
              points: r.points,
              createdAt: r.createdAt,
            ))
        .toList();
  }

  void deletePendingBatch(String hexId) {
    final batch = _realm.find<PendingBatchRealm>(ObjectId.fromHexString(hexId));
    if (batch != null) _realm.write(() => _realm.delete(batch));
  }

  int countPendingBatches() => _realm.all<PendingBatchRealm>().length;
}
