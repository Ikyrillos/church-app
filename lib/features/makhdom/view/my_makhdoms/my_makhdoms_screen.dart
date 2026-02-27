import 'package:abosiefienapp/features/makhdom/providers/my_makhdoms_provider.dart';
import 'package:abosiefienapp/core/widgets/mkhdom_list.dart';
import 'package:abosiefienapp/core/widgets/search_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:abosiefienapp/core/theme/app_theme.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

// SEGIL AL MAKHDOMEN
class MyMakhdomsScreen extends HookConsumerWidget {
  const MyMakhdomsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(() =>
        ref.read(myMakhdomsNotifierProvider.notifier).myMakhdoms(context)
          .then((value) => printDone('Done')));
      return null;
    }, const []);

    final mymakhdomsState = ref.watch(myMakhdomsNotifierProvider);
    final mymakhdomsNotifier = ref.read(myMakhdomsNotifierProvider.notifier);

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 40,
          width: double.infinity,
          child: Text(
            "إجمالى العدد : ${mymakhdomsState.allMakhdoms.length}",
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.end,
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("سجل المخدومين"),
        actions: [
          IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                mymakhdomsNotifier.myMakhdoms(context);
              })
        ],
      ),
      body: _buildBody(context, mymakhdomsState, mymakhdomsNotifier),
    );
  }

  Widget _buildBody(BuildContext context, dynamic mymakhdomsState, dynamic mymakhdomsNotifier) {
    if (mymakhdomsState.isLoading == true) {
      return const Center(child: CircularProgressIndicator());
    } else if (mymakhdomsState.allMakhdoms.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people_outline, size: 64, color: Theme.of(context).colorScheme.outline),
            const SizedBox(height: AppTheme.spacingM),
            Text('لا يوجد مخدومين', style: Theme.of(context).textTheme.bodyLarge)
          ],
        ),
      );
    } else {
      return Padding(
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
                child: RefreshIndicator(
                  onRefresh: () async {
                    await mymakhdomsNotifier.myMakhdoms(context);
                  },
                  child: ListView.builder(
                    itemCount: mymakhdomsState.items.length,
                    itemBuilder: (ctx, index) {
                      return MakdomList(
                        mymakhdomsState.items[index],
                        Icons.phone,
                        () => launchUrl(Uri.parse(
                            'tel://${mymakhdomsState.items[index].phone}')),
                        false,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
