import 'package:abosiefienapp/features/attendance/providers/add_attendance_provider.dart';
import 'package:abosiefienapp/core/widgets/app_date_picker_widget.dart';
import 'package:abosiefienapp/core/widgets/input_form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import 'package:abosiefienapp/core/theme/app_theme.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';

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
            FilledButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width / 1.5, 48),
              ),
              child: const Text('إرسال الحضور'),
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
            const Text('إضافة الحضور'),
            const Spacer(),
            state.isLoading
                ? const CircularProgressIndicator()
                : Text("${state.storedDataCount}")
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              notifier.saveJsonData(); // Load names into local SQLite cache
            },
            icon: Icon(Icons.download, color: Theme.of(context).colorScheme.primary),
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
                        textInputAction: TextInputAction.next,
                        lines: 1,
                        obscure: false,
                        textAlign: TextAlign.start,
                      ),
                      OutlinedButton.icon(
                        onPressed: () async {
                          DateTime? selected =
                              await customShowDatePicker(context);
                          if (selected != null) {
                            notifier.setSelectedAttendanceDate(
                                intl.DateFormat('yyyy-MM-dd')
                                    .format(selected));
                          }
                        },
                        icon: const Icon(Icons.date_range),
                        label: Text(
                          state.attendanceDate == ''
                              ? 'اختيار التاريخ'
                              : state.attendanceDate,
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppTheme.radiusM),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilledButton(
                        style: FilledButton.styleFrom(
                          minimumSize: Size(126.w, 48),
                        ),
                        child: const Text('اضافة'),
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
                        textInputAction: TextInputAction.done,
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
                      margin: const EdgeInsets.symmetric(vertical: AppTheme.spacingS),
                      child: ListTile(
                        title: Text(
                            'ID: ${item.id}'),
                        subtitle: Text(
                            'Name: ${item.name}'),
                        trailing: IconButton(
                          icon: Icon(Icons.delete_outline, color: Theme.of(context).colorScheme.error),
                          onPressed: () {
                             showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                icon: Icon(Icons.delete_outline, color: Theme.of(context).colorScheme.error),
                                title: const Text('حذف المخدوم'),
                                content: const Text('هل أنت متأكد من الحذف؟'),
                                actions: [
                                  TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('إلغاء')),
                                  FilledButton(
                                    style: FilledButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.error),
                                    onPressed: () { Navigator.pop(ctx); notifier.removeMakhdom(item.id); },
                                    child: const Text('حذف'),
                                  ),
                                ],
                              ),
                            );
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
