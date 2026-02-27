import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/features/makhdom/models/my_servees_model.dart';
import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';

import 'package:abosiefienapp/core/app_repository/repo.dart';
import 'package:abosiefienapp/core/errors/exceptions.dart';
import 'package:abosiefienapp/core/network/api_endpoints.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

class MyMakhdomsRepo extends Repository {
  Future<Either<Failure, MyServeesModel?>> requestMyMakhdoms(
      int sortColumn, int sortDirection, String absentDate) {
    final String formattedDate =
        DateFormat('yyyy-MM-dd').format(DateTime.now());

    return exceptionHandler(
      () async {
        printWarning('Iam In HistoryOfMakhdoms Repo');
        final Map<String, dynamic> response = await dioHelper
            .getDataWithQuery(endPont: Endpoints.requestMyMakhdoms, query: {
          "sortCoulmn": sortColumn,
          "sortDirection": sortDirection,
          "absentDate": formattedDate,
        });
        if (response['success'] == true) {
          return MyServeesModel.fromJson(response);
        }
        throw ServerException(exceptionMessage: response['msg']);
      },
    );
  }

  Future<Either<Failure, dynamic>> requestUpdateMakhdom(MyServeesData data) {
    return exceptionHandler(
      () async {
        printWarning('Iam In HistoryOfMakhdoms Repo');

        final Map<String, dynamic> response = await dioHelper.putData(
          Endpoints.requestUpdateMakhdom,
          {
            "id": data.id,
            "name": data.name,
            "phone": data.phone,
            "phone2": data.phone2,
            "adress": data.addBeside,
            "birthdate": data.birthdate,
            "addNo": data.addNo.toString(),
            "addStreet": data.addStreet,
            "addFloor": data.addFloor,
            "addBeside": data.addBeside,
            "father": data.father,
            "university": data.university,
            "faculty": data.faculty,
            "studentYear": data.studentYear,
            "khademId": data.servantId,
            "groupId": data.groupId,
            "notes": data.notes,
            "levelId": data.levelId,
            "oldId": data.levelId,
            "genderId": data.genderId,
            "job": data.job,
            "socialId": data.socialId,
          },
        );
        if (response['success'] == true) {
          return response['data'];
        }
        throw ServerException(exceptionMessage: response['msg']);
      },
    );
  }

  // Future requestUpdateMakhdom(MyServeesData data) {
  //   printWarning('Iam In HistoryOfMakhdoms Repo');
  //   return networkManager.put<dynamic>(
  //       Endpoints.REQUEST_UPDATE_MAKHDOM, data.toJson());
  // }
}
