import 'package:abosiefienapp/features/attendance/providers/check_box_add_attendance_provder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import 'package:abosiefienapp/core/widgets/app_date_picker_widget.dart';

class CheckBoxAddAttendanceScreen extends HookConsumerWidget {
  const CheckBoxAddAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    useEffect(() {
      Future.microtask(() {
        ref.read(checkBoxAddAttendanceNotifierProvider.notifier).loadDataOnStart();
      });
      return null;
    }, []);

    final state = ref.watch(checkBoxAddAttendanceNotifierProvider);
    final notifier = ref.read(checkBoxAddAttendanceNotifierProvider.notifier);

    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            fixedSize: Size(MediaQuery.of(context).size.width, 30.h),
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 0.0.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0.r),
              ),
            ),
          ),
          onPressed: () {
            notifier.addAttendance(context);
          },
          child: const Text(
            'Send',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              DateTime? selected = await customShowDatePicker(context);
              if (selected != null) {
                 final formattedDate = intl.DateFormat('yyyy-MM-dd').format(selected);
                 ref.read(checkBoxAddAttendanceNotifierProvider.notifier).setSelectedAttendanceDate(formattedDate);
              }
            },
            icon: Icon(
              Icons.date_range,
              color: Colors.blue,
              size: 25.sp,
            ),
          ),
          IconButton(
            onPressed: () {
              notifier.loadDataOnStart();
            },
            icon: const Icon(
              Icons.download,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          switch (state.dataState) {
            case DataState.loading:
              return const Center(child: CircularProgressIndicator());
            case DataState.noData:
              return const Center(
                child: Text(
                  'No data found',
                  style: TextStyle(color: Colors.teal),
                ),
              );
            case DataState.loaded:
              if (state.data.isNotEmpty) {
                return ListView.builder(
                  itemExtent: 80,
                  itemCount: state.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = state.data[index];
                    String name = item.name ?? '';
                    String id = item.id.toString();

                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                          bottom: 10, left: 16, right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffF8EDED),
                      ),
                      child: CheckboxListTile(
                        subtitle: Text(
                            state.attendanceDate.isNotEmpty 
                            ? state.attendanceDate 
                            : intl.DateFormat('yyyy-MM-dd').format(DateTime.now()).toString()
                        ),
                        value: state.checkboxStates[id] ?? false,
                        onChanged: (value) {
                          notifier.saveCheckboxState(id, value ?? false);
                        },
                        title: Text(
                          name,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: Text(
                    'No names available',
                    style: TextStyle(color: Colors.teal),
                  ),
                );
              }
          }
        },
      ),
    );
  }
}
