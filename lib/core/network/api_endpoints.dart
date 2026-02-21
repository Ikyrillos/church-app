import 'package:flutter/foundation.dart';

class Endpoints {
  static const baseUrl = !kDebugMode
      ? "http://192.168.1.6:8081/api/"
      : "https://servicesqc.azurewebsites.net/api/";
  static const testBaseUrl =
      "https://staging-services.azurewebsites.net/swagger/index.html/api/";
  static const requestLogin = "auth/login";
  static const requestMyMakhdoms = "makhdom/mymakhdoms";
  static const requestUpdateMakhdom = "makhdom";
  static const requestAddMakhdom = "makhdom";
  static const requestGetKhadem = "khadem";
  static const requestAddAttendance = "attendance";
  static const requestGetAllNames = 'makhdom/getallnames';
}
