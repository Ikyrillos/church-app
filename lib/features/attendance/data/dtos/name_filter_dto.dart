/// DTO that shapes the optional query parameters for `makhdom/getallnames`.
class NameFilterDto {
  final int? levelId;
  final int? serviceId;

  const NameFilterDto({this.levelId, this.serviceId});

  bool get hasFilter => levelId != null || serviceId != null;

  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{};
    if (levelId != null) params['levelId'] = levelId;
    if (serviceId != null) params['serviceId'] = serviceId;
    return params;
  }
}
