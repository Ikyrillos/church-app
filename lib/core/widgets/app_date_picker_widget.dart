import 'package:flutter/material.dart';

/// Shows the Material 3 date picker dialog.
///
/// Uses the app's [ColorScheme] and [TextTheme] automatically.
///
/// [firstDate] defaults to 1 January 2000, suitable for both attendance
/// dates and birthdate selection. Pass a custom value if needed.
/// [lastDate] defaults to today.
Future<DateTime?> customShowDatePicker(
  BuildContext context, {
  DateTime? firstDate,
  DateTime? lastDate,
}) async {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);

  return showDatePicker(
    context: context,
    initialDate: today,
    firstDate: firstDate ?? DateTime(2000),
    lastDate: lastDate ?? today,
    // Calendar mode is the Material 3 default; explicit for clarity.
    initialEntryMode: DatePickerEntryMode.calendar,
  );
}
