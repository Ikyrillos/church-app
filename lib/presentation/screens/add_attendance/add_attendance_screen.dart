import 'package:abosiefienapp/Providers/add_attendance_provider.dart';
import 'package:abosiefienapp/presentation/widgets/app_date_picker_widget.dart';
import 'package:abosiefienapp/presentation/widgets/input_form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import '../../../core/theming/app_styles_util.dart';
import '../../../core/utils/custom_function.dart';

class AddAttendanceScreen extends HookConsumerWidget {
  const AddAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pointsController = useTextEditingController();
    final codeController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    
    final state = ref.watch(addAttendanceNotifierProvider);
    final notifier = ref.read(addAttendanceNotifierProvider.notifier);

    // Sync scan result to controller
    useEffect(() {
      if (state.scanResult.isNotEmpty && state.scanResult != '-1') {
        codeController.text = state.scanResult;
      }
      return null;
    }, [state.scanResult]);

    return Scaffold(
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${state.localAttendanceMakhdoms.length}',
              style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize:
                    Size(MediaQuery.of(context).size.width / 1.5, 30.h),
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 0.0.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0.r),
                  ),
                ),
              ),
              child: Text('إرسال الحضور',
                  style: AppStylesUtil.textRegularStyle(
                      18.sp, Colors.white, FontWeight.w500)),
              onPressed: () async {
                if (state.localAttendanceMakhdoms.isNotEmpty) {
                  bool success = await notifier.addAttendance(context, pointsController.text);
                  if (success) {
                    notifier.removeAllList(); // Clear cache on success
                  }
                } else {
                  CustomFunctions().showError(
                      message:
                          'برجاء اضافة اسم الذي تريد اخذ الحضور له من خلال البحث بي id الخاص بي المخدوم ',
                      context: context);
                }
              },
            ),
          ],
        ),
      ],
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'إضافة الحضور',
              style: AppStylesUtil.textRegularStyle(
                  20.0, Colors.black, FontWeight.w500),
            ),
            const Spacer(),
            state.isLoading
                ? const CircularProgressIndicator(color: Colors.blue)
                : Text("${state.storedDataCount}")
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              notifier.saveJsonData(); // Load names into local SQLite cache
            },
            icon: const Icon(Icons.download, color: Colors.blue),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InputFieldWidget(
                        labeltext: 'نقاط',
                        width: 136.w,
                        height: 40,
                        controller: pointsController,
                        keyboardType: TextInputType.number,
                        lines: 1,
                        obscure: false,
                        textAlign: TextAlign.start,
                      ),
                      InkWell(
                        onTap: () async {
                          DateTime? selected =
                              await customShowDatePicker(context);
                          if (selected != null) {
                            notifier.setSelectedAttendanceDate(
                                intl.DateFormat('yyyy-MM-dd')
                                    .format(selected));
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.date_range,
                                color: Colors.blue, size: 25.sp),
                            10.horizontalSpace,
                            Text(
                              state.attendanceDate == ''
                                  ? 'اختيار التاريخ'
                                  : state.attendanceDate,
                              style: AppStylesUtil.textRegularStyle(
                                  17.sp, Colors.black, FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: Size(126.w, 30.h),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 8.0),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                        ),
                        child: Text('اضافة',
                            style: AppStylesUtil.textRegularStyle(
                                18.sp, Colors.white, FontWeight.w500)),
                        onPressed: () async {
                          notifier.validateAndAdd(context, codeController.text);
                        },
                      ),
                      InputFieldWidget(
                        labeltext: 'كود المخدوم',
                        width: 200.w,
                        height: 40,
                        controller: codeController,
                        keyboardType: TextInputType.number,
                        lines: 1,
                        obscure: false,
                        textAlign: TextAlign.start,
                        prefix: IconButton(
                            onPressed: () {
                              notifier.scanCode();
                            },
                            icon: const Icon(Icons.qr_code)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: ListView.builder(
                  itemCount: state.localAttendanceMakhdoms.length,
                  itemBuilder: (context, index) {
                    final item = state.localAttendanceMakhdoms[index];
                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      elevation: 2.0,
                      child: ListTile(
                        title: Text(
                            'ID: ${item.id}'),
                        subtitle: Text(
                            'Name: ${item.name}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            if (item.id != null) {
                               notifier.removeMakhdom(item.id!);
                            }
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
