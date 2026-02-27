import 'package:abosiefienapp/features/makhdom/providers/my_makhdoms_provider.dart';
import 'package:abosiefienapp/core/widgets/mkhdom_list.dart';
import 'package:abosiefienapp/core/widgets/search_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:abosiefienapp/core/theme/app_styles_util.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

// SEGIL AL MAKHDOMEN
class MyMakhdomsScreen extends ConsumerStatefulWidget {
  const MyMakhdomsScreen({super.key});

  @override
  ConsumerState<MyMakhdomsScreen> createState() => _MyMakhdomsScreenState();
}

class _MyMakhdomsScreenState extends ConsumerState<MyMakhdomsScreen> {
  @override
  void initState() {
    callMyMakhdomsApi();
    super.initState();
  }

  Future<void> callMyMakhdomsApi() async {
    Future.delayed(Duration.zero, () {
      ref
          .read(myMakhdomsNotifierProvider.notifier)
          .myMakhdoms(context)
          .then((value) => printDone('Done'));
    });
  }

  @override
  Widget build(BuildContext context) {
    final mymakhdomsState = ref.watch(myMakhdomsNotifierProvider);
    final mymakhdomsNotifier = ref.read(myMakhdomsNotifierProvider.notifier);

    return Scaffold(
      bottomNavigationBar: Card(
        elevation: 10,
        shadowColor: Colors.grey,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Container(
          height: 40,
          width: double.infinity,
          padding: const EdgeInsets.all(5),
          child: Text(
            "إجمالى العدد : ${mymakhdomsState.allMakhdoms.length}", //provider.allMakhdoms?.length
            style: AppStylesUtil.textRegularStyle(
                20.0, Colors.black, FontWeight.w500),
            textAlign: TextAlign.end,
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "سجل المخدومين",
          style: AppStylesUtil.textRegularStyle(
              20.0, Colors.black, FontWeight.w500),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                // CALL LIST OF MAKHDOMS AGAIEN
                mymakhdomsNotifier.myMakhdoms(context);
              })
        ],
      ),
      body: mymakhdomsState.listLength == 0
          ? Container()
          : Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: Column(
                children: [
                  SearchSectionWidget(
                      controller: mymakhdomsNotifier.searchController,
                      filtervisibility: true,
                      onChanged: (value) {
                        mymakhdomsNotifier.filterSearchResults(value);
                      }),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListView.builder(
                        itemCount: mymakhdomsState.items.length,
                        itemBuilder: (ctx, index) {
                          return MakdomList(
                            mymakhdomsState.items[index],
                            Icons.phone,
                            () => launchUrl(Uri.parse(
                                'tel://${mymakhdomsState.items[index].phone}')), //provider.allMakhdoms![index].phone
                            false,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
