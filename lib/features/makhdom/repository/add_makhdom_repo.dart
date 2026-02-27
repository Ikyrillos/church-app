import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import 'package:abosiefienapp/core/app_repository/repo.dart';
import 'package:abosiefienapp/core/errors/exceptions.dart';
import 'package:abosiefienapp/core/network/api_endpoints.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class AddMakhdomRepo extends Repository {
  Future<Either<Failure, dynamic>> requestAddMakhdom(
      Map<String, dynamic>? body) {
    return exceptionHandler(
      () async {
        printWarning('Iam In History Of Makhdoms Repo');
        final Map<String, dynamic> response =
            await dioHelper.postData(Endpoints.requestAddMakhdom, body);
        if (response['success'] == true) {
          return response['data'];
        }
        throw ServerException(exceptionMessage: response['msg']);
      },
    );
  }
}
