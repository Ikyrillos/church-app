class Endpoints {
  static const baseUrl = prodUrl;
  static const prodUrl = "https://servicesqc.azurewebsites.net/api/";
  static const dev = "https://servicesqc.azurewebsites.net/api/";

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
