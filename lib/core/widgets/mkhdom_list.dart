import 'package:abosiefienapp/features/makhdom/providers/my_makhdoms_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:abosiefienapp/core/app_assets/app_assets_util.dart';
import 'package:abosiefienapp/core/route/app_routes.dart';
import 'package:abosiefienapp/core/theme/app_theme.dart';
import 'package:abosiefienapp/core/utils/app_debug_prints.dart';
import 'package:abosiefienapp/features/makhdom/models/my_servees_model.dart';

class MakdomList extends ConsumerWidget {
  final MyServeesData makhdom;
  final IconData actionIcon;
  final void Function()? handlePress;
  final bool addAttendance;

  const MakdomList(
      this.makhdom, this.actionIcon, this.handlePress, this.addAttendance,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(myMakhdomsNotifierProvider.notifier);
    if (makhdom.name == null) {
      return const SizedBox.shrink();
    }
    
    return Card(
      child: InkWell(
        onTap: () {
          printWarning('Check Parse $makhdom');
          printWarning('makhdomDetails Navigate');
          Navigator.pushNamed(
            context,
            AppRoutes.makhdomDetailsRouteName,
            arguments: makhdom,
          );
        },
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                radius: 24,
                child: makhdom.genderId == 1
                    ? Image.asset(AppAssets.maleAvatar, width: 40.0, height: 40.0)
                    : Image.asset(AppAssets.femaleAvatar, width: 40.0, height: 40.0),
              ),
              title: Text(
                makhdom.name ?? "",
                style: Theme.of(context).textTheme.bodyLarge,
                textScaler: TextScaler.noScaling,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                makhdom.phone ?? "",
                style: Theme.of(context).textTheme.bodyMedium,
                textScaler: TextScaler.noScaling,
              ),
              trailing: Visibility(
                visible: makhdom.phone != null,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        (makhdom.phone != "" || addAttendance) ? actionIcon : Icons.call_end,
                        color: Theme.of(context).colorScheme.primary,
                        size: 20,
                      ),
                      onPressed: handlePress,
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.whatsapp,
                        size: 24,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      onPressed: () {
                        provider.sendWhatsAppMessage(
                          context: context,
                          phone: makhdom.phone!,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(AppTheme.spacingM, 0, AppTheme.spacingM, AppTheme.spacingM),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${makhdom.id ?? 'لا يوجد'}',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    makhdom.lastAttendanceDate == null
                        ? 'اخر حضور: لا يوجد'
                        : 'اخر حضور: ${provider.convertToDate(makhdom.lastAttendanceDate ?? '')}',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
