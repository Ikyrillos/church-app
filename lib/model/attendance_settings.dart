class AttendanceSetting {
  bool value;
  int makhdomId;

  AttendanceSetting({
    required this.value,
    required this.makhdomId
  });

  AttendanceSetting copyWith({
    bool? value,
    int? makhdomId,
  }) {
    return AttendanceSetting(
      value: value ?? this.value,
      makhdomId: makhdomId ?? this.makhdomId,
    );
  }
}
