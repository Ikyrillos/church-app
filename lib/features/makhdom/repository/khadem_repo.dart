import 'package:abosiefienapp/features/makhdom/models/khadem_model.dart';
import 'package:dartz/dartz.dart';

import 'package:abosiefienapp/core/app_repository/repo.dart';
import 'package:abosiefienapp/core/errors/exceptions.dart';
import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/network/api_endpoints.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class KhademRepo extends Repository {
  Future<Either<Failure, KhademModel?>> requestGetKhadem() {
    return exceptionHandler(
      () async {
        printWarning('Iam In Khadem Repo');
        final Map<String, dynamic> response = await dioHelper.getData(
          endPont: Endpoints.requestGetKhadem,
        );
        if (response['success'] == true) {
          return KhademModel.fromJson(response);
        }
        throw ServerException(exceptionMessage: response['msg']);
      },
    );
  }
}
