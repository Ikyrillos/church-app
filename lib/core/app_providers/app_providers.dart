import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../Providers/add_attendance_provider.dart';
import '../../Providers/add_class_attendance_provider.dart';
import '../../Providers/check_box_add_attendance_provder.dart';
import '../../Providers/makhdom_details_provider.dart';

List<SingleChildWidget> providers = <SingleChildWidget>[...independentServices];
List<SingleChildWidget> independentServices = [
  ChangeNotifierProvider(create: (context) => CheckBoxAddAttendanceProvider()),
  ChangeNotifierProvider(create: (context) => MakhdomDetailsProvider()),
  ChangeNotifierProvider(create: (context) => AddClassAttendanceProvider()),
  ChangeNotifierProvider(
    create: (context) => AddAttendanceProvider(),
  ),
];
