import 'package:dartz/dartz.dart';

import 'package:abosiefienapp/core/app_repository/repo.dart';
import 'package:abosiefienapp/core/errors/exceptions.dart';
import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/network/api_endpoints.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';
import 'package:abosiefienapp/features/attendance/data/dtos/attendance_request_dto.dart';
import 'package:abosiefienapp/features/attendance/data/dtos/name_filter_dto.dart';
import 'package:abosiefienapp/features/attendance/data/local/attendance_local_datasource.dart';
import 'package:abosiefienapp/features/attendance/domain/models/pending_batch.dart';
import 'package:abosiefienapp/features/attendance/models/add_attendance_model.dart';

/// Single repository for the attendance feature.
///
/// Remote operations use [dioHelper] + [exceptionHandler] (from [Repository]).
/// Local operations are delegated to [AttendanceLocalDatasource].
class AttendanceRepository extends Repository {
  final AttendanceLocalDatasource _local;

  AttendanceRepository(this._local);

  // ── Remote ─────────────────────────────────────────────────────────────────

  /// Downloads names from the server, applying optional [filter] params.
  Future<Either<Failure, List<AddAttendanceModel>>> fetchNames(
    NameFilterDto filter,
  ) {
    return exceptionHandler(() async {
      final Map<String, dynamic> response = filter.hasFilter
          ? await dioHelper.getDataWithQuery(
              endPont: Endpoints.requestGetAllNames,
              query: filter.toQueryParams(),
            )
          : await dioHelper.getData(endPont: Endpoints.requestGetAllNames);

      printWarning('fetchNames response: $response');

      if (response['success'] == true) {
        if (response['data'] is List) {
          return (response['data'] as List)
              .cast<Map<String, dynamic>>()
              .where((e) => e['id'] != null && e['name'] != null)
              .map((e) => AddAttendanceModel(
                    id: e['id'] as int,
                    name: e['name'] as String,
                  ))
              .toList();
        }
        throw ServerException(exceptionMessage: 'Invalid data format');
      }
      throw ServerException(
          exceptionMessage: response['errorMsg']?.toString());
    });
  }

  /// Submits an attendance batch to the server.
  Future<Either<Failure, void>> submitAttendance(AttendanceRequestDto dto) {
    return exceptionHandler(() async {
      printWarning('submitAttendance: ${dto.toJson()}');
      final Map<String, dynamic> response = await dioHelper.getDataWithQuery(
        endPont: Endpoints.requestAddAttendance,
        query: dto.toJson(),
      );
      if (response['success'] == true) return;
      throw ServerException(
          exceptionMessage: response['errorMsg']?.toString());
    });
  }

  // ── Local (delegated to datasource) ────────────────────────────────────────

  void replaceAllNames(List<AddAttendanceModel> names) =>
      _local.replaceAllNames(names);

  List<AddAttendanceModel> searchByName(String query) =>
      _local.searchByName(query);

  AddAttendanceModel? findById(int id) => _local.findById(id);

  int countStoredNames() => _local.countNames();

  void insertPendingBatch(PendingBatch batch) =>
      _local.insertPendingBatch(batch);

  List<PendingBatch> getPendingBatches() => _local.getPendingBatches();

  void deletePendingBatch(String hexId) => _local.deletePendingBatch(hexId);

  int countPendingBatches() => _local.countPendingBatches();
}
