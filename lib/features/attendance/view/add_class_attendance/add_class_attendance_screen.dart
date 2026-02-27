import 'package:abosiefienapp/features/attendance/providers/add_class_attendance_provider.dart';
import 'package:abosiefienapp/core/extension_method/extension_navigation.dart';
import 'package:abosiefienapp/core/widgets/search_section_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:abosiefienapp/core/route/app_routes.dart';
import 'package:abosiefienapp/core/theme/app_styles_util.dart';

// SEGIL AL MAKHDOMEN
class AddClassAttendanceScreen extends HookConsumerWidget {
  const AddClassAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    
    useEffect(() {
      Future.microtask(() {
        ref.read(addClassAttendanceNotifierProvider.notifier).myMakhdoms(context);
      });
      return null;
    }, []);

    final state = ref.watch(addClassAttendanceNotifierProvider);
    final notifier = ref.read(addClassAttendanceNotifierProvider.notifier);

    // Filter logic is now handled by the provider state or we can do it here if provider exposes a getter.
    // The provider I wrote has `get filteredMakhdoms` on the state class.
    // But State class is data class. Does it have getters? Yes I added one.
    // Let's check if the generated code allows accessing it.
    // Yes, state is just an instance of AddClassAttendanceState.

    final filteredList = state.filteredMakhdoms;

    return Scaffold(
        bottomNavigationBar: Card(
          elevation: 10,
          shadowColor: Colors.grey,
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Container(
            height: 40,
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            child: Text(
              "إجمالى العدد : ${state.allMakhdoms.length}",
              style: AppStylesUtil.textRegularStyle(
                  20.0, Colors.black, FontWeight.w500),
              textAlign: TextAlign.end,
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            "إضافة حضور",
            style: AppStylesUtil.textRegularStyle(
                20.0, Colors.black, FontWeight.w500),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  notifier.myMakhdoms(context);
                })
          ],
        ),
        body: state.isLoading && state.allMakhdoms.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                child: Column(
                  children: [
                    SearchSectionWidget(
                      controller: searchController,
                      filtervisibility: false,
                      onChanged: (value) {
                        notifier.setSearchQuery(value);
                      },
                      searchonTap: () {
                        notifier.setSearchQuery(searchController.text);
                      },
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListView.builder(
                          itemCount: filteredList.length,
                          itemBuilder: (ctx, index) {
                            final item = filteredList[index];
                            final isSelected = state.selectedIds.contains(item.id);
                            
                            return ListTile(
                              title: Text(
                                '${index + 1} -   ${item.name}' ?? '',
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                textScaleFactor: 0.97,
                                style: AppStylesUtil.textBoldStyle(
                                    17.0, Colors.black, FontWeight.bold),
                              ),
                              leading: CupertinoSwitch(
                                activeTrackColor: Colors.blue,
                                value: isSelected,
                                onChanged: (newvalue) {
                                  if (item.id != null) {
                                    notifier.toggleAttendance(item.id!);
                                  }
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        fixedSize:
                            Size(MediaQuery.sizeOf(context).width, 40.h),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'حــفظ',
                        style: AppStylesUtil.textRegularStyle(
                            20, Colors.white, FontWeight.bold),
                      ),
                      onPressed: () {
                        notifier.addAttendance(context).then(
                          (success) {
                            if (success) {
                              context.pushReplacementNamed(
                                  AppRoutes.addClassAttendanceRouteName);
                            }
                          },
                        );
                      },
                    ),
                  ],
                ),
              ));
  }
}
