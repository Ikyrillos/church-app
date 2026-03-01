class Endpoints {
  static const baseUrl = prodUrl;
  static const prodUrl =
      "https://servicesqc-bzdhgxbhekfhd8hn.canadacentral-01.azurewebsites.net/api/";
  static const dev = "https://servicesqc.azurewebsites.net/api/";

  static const testBaseUrl =
      "https://servicesqc-bzdhgxbhekfhd8hn.canadacentral-01.azurewebsites.net/swagger/index.html";
  static const requestLogin = "auth/login";
  static const requestMyMakhdoms = "makhdom/mymakhdoms";
  static const requestUpdateMakhdom = "makhdom";
  static const requestAddMakhdom = "makhdom";
  static const requestGetKhadem = "khadem";
  static const requestAddAttendance = "attendance";
  static const requestGetAllNames = 'makhdom/getallnames';
}
