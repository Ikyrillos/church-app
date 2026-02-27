import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:abosiefienapp/core/app_repository/repo.dart';
import 'package:abosiefienapp/core/errors/exceptions.dart';
import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/network/api_endpoints.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class CheckBoxAddAttendanceRepository extends Repository {
  Future<List<Map<String, dynamic>>> getFakeData() async {
    Dio dio = Dio();
    printWarning('Iam In CheckBoxAddAttendanceRepository ');

    var response = await dio.get('https://jsonplaceholder.typicode.com/posts');
    List<Map<String, dynamic>> data =
        List<Map<String, dynamic>>.from(response.data);

    return data;
  }

  Future<Either<Failure, List<Map<String, dynamic>>>> getAllNames() async {
    return getAllNamesFiltered();
  }

  /// Fetches all names with optional filtering by [levelId] and/or [serviceId].
  /// Pass null for a param to omit it from the query (fetch all).
  Future<Either<Failure, List<Map<String, dynamic>>>> getAllNamesFiltered({
    int? levelId,
    int? serviceId,
  }) async {
    return exceptionHandler(
      () async {
        final Map<String, dynamic> query = {};
        if (levelId != null) query['levelId'] = levelId;
        if (serviceId != null) query['serviceId'] = serviceId;

        final Map<String, dynamic> response = query.isEmpty
            ? await dioHelper.getData(endPont: Endpoints.requestGetAllNames)
            : await dioHelper.getDataWithQuery(
                endPont: Endpoints.requestGetAllNames, query: query);

        printWarning('Response from server: $response');

        if (response['success'] == true) {
          if (response['data'] != null && response['data'] is List) {
            final data = List<Map<String, dynamic>>.from(response['data']);
            printDone('Data fetched successfully with length: ${data.length}');
            return data;
          } else {
            printError('Data is not a valid List<Map<String, dynamic>> format.');
            throw ServerException(exceptionMessage: 'Invalid data format');
          }
        }

        printError('Server returned an error: ${response['errorMsg']}');
        throw ServerException(exceptionMessage: response['errorMsg']?.toString());
      },
    );
  }
}
