/// DTO that shapes the JSON body sent to the `attendance` API endpoint.
class AttendanceRequestDto {
  final String attendanceDate;
  final List<int> makhdomsId;
  final String points;

  const AttendanceRequestDto({
    required this.attendanceDate,
    required this.makhdomsId,
    required this.points,
  });

  Map<String, dynamic> toJson() => {
        'attendanceDate': attendanceDate,
        'makhdomsId': makhdomsId,
        'points': points,
      };
}
