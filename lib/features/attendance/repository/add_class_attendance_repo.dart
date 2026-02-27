import 'package:dartz/dartz.dart';

import 'package:abosiefienapp/core/app_repository/repo.dart';
import 'package:abosiefienapp/core/errors/exceptions.dart';
import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/network/api_endpoints.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class AddClassAttendanceRepo extends Repository {
  Future<Either<Failure, Map<String, dynamic>>> requestAddAttendance(
      Map<String, dynamic>? body) {
    return exceptionHandler(
      () async {
        printWarning('Iam In AddAttendance Repo');
        final Map<String, dynamic> response = await dioHelper.getDataWithQuery(
            endPont: Endpoints.requestAddAttendance, query: body!);
        if (response['success'] == true) {
          return response;
        }
        throw ServerException(exceptionMessage: response['msg']);
      },
    );
  }
}
