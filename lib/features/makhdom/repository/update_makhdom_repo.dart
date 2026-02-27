import 'package:abosiefienapp/features/makhdom/models/makhdom_update_model.dart';
import 'package:abosiefienapp/features/makhdom/models/mymakhdoms_model.dart' as mymakhdomsmodel;
import 'package:dartz/dartz.dart';

import 'package:abosiefienapp/core/app_repository/repo.dart';
import 'package:abosiefienapp/core/errors/exceptions.dart';
import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/network/api_endpoints.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class UpdateMakhdomRepo extends Repository {
  Future<Either<Failure, MakhdomUpdateModel?>> requestUpdateMakhdom(
      mymakhdomsmodel.Data data) {
    printWarning('Iam In HistoryOfMakhdoms Repo');
    return exceptionHandler(
      () async {
        final Map<String, dynamic> response = await dioHelper.putData(
          Endpoints.requestUpdateMakhdom,
          data.toJson(),
        );
        return MakhdomUpdateModel.fromJson(response['data']);
        throw ServerException(exceptionMessage: response['msg']);
      },
    );
  }
}
