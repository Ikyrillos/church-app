import 'package:abosiefienapp/features/attendance/models/add_attendance_model.dart';
import 'package:abosiefienapp/features/attendance/providers/add_attendance_provider.dart';
import 'package:abosiefienapp/core/widgets/app_date_picker_widget.dart';
import 'package:abosiefienapp/core/widgets/input_form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import 'package:abosiefienapp/core/theme/app_theme.dart';

class AddAttendanceScreen extends HookConsumerWidget {
  const AddAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pointsController = useTextEditingController();
    final codeController = useTextEditingController();
    final nameController = useTextEditingController();
    final showCodeSearch = useState(false);

    final state = ref.watch(addAttendanceNotifierProvider);
    final notifier = ref.read(addAttendanceNotifierProvider.notifier);

    // Sync scan result into code field
    useEffect(() {
      if (state.scanResult.isNotEmpty && state.scanResult != '-1') {
        codeController.text = state.scanResult;
      }
      return null;
    }, [state.scanResult]);

    return Scaffold(
      // ── Footer ─────────────────────────────────────────────────────────────
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${state.localAttendanceMakhdoms.length}',
                  style: TextStyle(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('حاضر', style: TextStyle(fontSize: 12.sp)),
              ],
            ),
            state.isLoading
                ? const CircularProgressIndicator()
                : FilledButton.icon(
                    icon: const Icon(Icons.save_alt_rounded),
                    label: const Text('حفظ وإرسال'),
                    style: FilledButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 1.8, 48),
                    ),
                    onPressed: () async {
                      await notifier.saveAndSync(
                          context, pointsController.text);
                    },
                  ),
          ],
        ),
      ],

      // ── AppBar ──────────────────────────────────────────────────────────────
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('إضافة الحضور'),
            if (state.pendingSyncCount > 0)
              Text(
                '${state.pendingSyncCount} في انتظار المزامنة',
                style: TextStyle(
                  fontSize: 11.sp,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
          ],
        ),
        actions: [
          // Manual sync button – shown only when there are pending batches
          if (state.pendingSyncCount > 0)
            state.isSyncing
                ? const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  )
                : IconButton(
                    tooltip: 'مزامنة الآن',
                    icon: const Icon(Icons.sync_rounded),
                    onPressed: () => notifier.syncPendingBatches(),
                  ),
          // Stored-names count badge
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Center(
              child: state.isLoading
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : _StoredCountBadge(count: state.storedDataCount),
            ),
          ),
          // Download / filter button
          IconButton(
            tooltip: 'تحميل الأسماء',
            icon: Icon(Icons.download_rounded,
                color: Theme.of(context).colorScheme.primary),
            onPressed: () => _showDownloadFilterDialog(context, notifier),
          ),
        ],
      ),

      // ── Body ───────────────────────────────────────────────────────────────
      body: SafeArea(
        child: Column(
          children: [
            // ── Top controls: points + date ─────────────────────────────────
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppTheme.spacingM, vertical: 8.h),
              child: Row(
                children: [
                  InputFieldWidget(
                    labeltext: 'نقاط',
                    width: 100.w,
                    height: 40,
                    controller: pointsController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    lines: 1,
                    obscure: false,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () async {
                        final selected = await customShowDatePicker(context);
                        if (selected != null) {
                          notifier.setSelectedAttendanceDate(
                              intl.DateFormat('yyyy-MM-dd').format(selected));
                        }
                      },
                      icon: const Icon(Icons.date_range_rounded, size: 18),
                      label: Text(
                        state.attendanceDate.isEmpty
                            ? 'اختيار التاريخ'
                            : state.attendanceDate,
                        overflow: TextOverflow.ellipsis,
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppTheme.radiusM),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(height: 1),

            // ── Autocomplete name search ────────────────────────────────────
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppTheme.spacingM, vertical: 6.h),
              child: _NameAutocomplete(
                controller: nameController,
                suggestions: state.suggestions,
                onQueryChanged: notifier.searchByName,
                onSelected: (item) {
                  notifier.addFromAutocomplete(item);
                  nameController.clear();
                },
              ),
            ),

            // ── Code search toggle ──────────────────────────────────────────
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppTheme.spacingM),
              child: Row(
                children: [
                  TextButton.icon(
                    icon: Icon(
                      showCodeSearch.value
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      size: 18,
                    ),
                    label: Text(
                      showCodeSearch.value ? 'إخفاء بحث الكود' : 'بحث بالكود',
                      style: TextStyle(fontSize: 13.sp),
                    ),
                    onPressed: () =>
                        showCodeSearch.value = !showCodeSearch.value,
                  ),
                ],
              ),
            ),
            if (showCodeSearch.value)
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppTheme.spacingM, vertical: 4.h),
                child: Row(
                  children: [
                    FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: Size(90.w, 44),
                      ),
                      onPressed: () {
                        notifier.validateAndAdd(context, codeController.text);
                        codeController.clear();
                      },
                      child: const Text('إضافة'),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: InputFieldWidget(
                        labeltext: 'كود المخدوم',
                        width: double.infinity,
                        height: 44,
                        controller: codeController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        lines: 1,
                        obscure: false,
                        textAlign: TextAlign.start,
                        prefix: IconButton(
                          onPressed: notifier.scanCode,
                          icon: const Icon(Icons.qr_code_scanner_rounded),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            const Divider(height: 1),

            // ── Attendance session list ─────────────────────────────────────
            Expanded(
              child: state.localAttendanceMakhdoms.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.people_outline,
                              size: 56, color: Colors.grey.shade400),
                          const SizedBox(height: 8),
                          Text(
                            'ابدأ بكتابة الاسم في حقل البحث',
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14.sp),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppTheme.spacingM, vertical: 8.h),
                      itemCount: state.localAttendanceMakhdoms.length,
                      itemBuilder: (context, index) {
                        final item = state.localAttendanceMakhdoms[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: AppTheme.spacingXs),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            title: Text(item.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600)),
                            subtitle: Text('ID: ${item.id}'),
                            trailing: IconButton(
                              icon: Icon(Icons.remove_circle_outline,
                                  color: Theme.of(context).colorScheme.error),
                              onPressed: () =>
                                  _confirmRemove(context, notifier, item),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Helpers ──────────────────────────────────────────────────────────────

  void _confirmRemove(
    BuildContext context,
    AddAttendanceNotifier notifier,
    AddAttendanceModel item,
  ) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        icon:
            Icon(Icons.delete_outline, color: Theme.of(ctx).colorScheme.error),
        title: const Text('حذف من الحضور'),
        content: Text('هل تريد حذف "${item.name}"؟'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx), child: const Text('إلغاء')),
          FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Theme.of(ctx).colorScheme.error),
            onPressed: () {
              Navigator.pop(ctx);
              notifier.removeMakhdom(item.id);
            },
            child: const Text('حذف'),
          ),
        ],
      ),
    );
  }

  void _showDownloadFilterDialog(
    BuildContext context,
    AddAttendanceNotifier notifier,
  ) {
    showDialog(
      context: context,
      builder: (ctx) => _DownloadFilterDialog(
        onConfirm: ({int? levelId, int? serviceId}) {
          Navigator.pop(ctx);
          notifier.downloadNamesFiltered(
              levelId: levelId, serviceId: serviceId);
        },
      ),
    );
  }
}

// ─── Autocomplete widget ────────────────────────────────────────────────────

class _NameAutocomplete extends StatefulWidget {
  final TextEditingController controller;
  final List<AddAttendanceModel> suggestions;
  final void Function(String) onQueryChanged;
  final void Function(AddAttendanceModel) onSelected;

  const _NameAutocomplete({
    required this.controller,
    required this.suggestions,
    required this.onQueryChanged,
    required this.onSelected,
  });

  @override
  State<_NameAutocomplete> createState() => _NameAutocompleteState();
}

class _NameAutocompleteState extends State<_NameAutocomplete> {
  final _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  @override
  void didUpdateWidget(_NameAutocomplete oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.suggestions != widget.suggestions) {
      // Defer overlay update to avoid calling setState/insert during build.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _updateOverlay();
      });
    }
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _updateOverlay() {
    _removeOverlay();
    if (widget.suggestions.isEmpty || widget.controller.text.isEmpty) return;

    _overlayEntry = OverlayEntry(
      builder: (ctx) => Positioned(
        width: MediaQuery.of(context).size.width - 32,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: const Offset(0, 52),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(AppTheme.radiusM),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 220),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: widget.suggestions.length,
                separatorBuilder: (_, __) =>
                    const Divider(height: 1, indent: 12, endIndent: 12),
                itemBuilder: (_, i) {
                  final item = widget.suggestions[i];
                  return ListTile(
                    dense: true,
                    title: Text(item.name),
                    subtitle: Text('${item.id}',
                        style: const TextStyle(fontSize: 11)),
                    onTap: () {
                      widget.onSelected(item);
                      _removeOverlay();
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: TextField(
        controller: widget.controller,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          labelText: 'ابحث بالاسم',
          hintText: 'اكتب جزءاً من الاسم…',
          prefixIcon: const Icon(Icons.search_rounded),
          suffixIcon: widget.controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear_rounded),
                  onPressed: () {
                    widget.controller.clear();
                    widget.onQueryChanged('');
                    _removeOverlay();
                  },
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppTheme.radiusM),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        ),
        onChanged: (value) {
          widget.onQueryChanged(value);
          setState(() {}); // rebuild to show/hide clear button
        },
      ),
    );
  }
}

// ─── Download filter dialog ─────────────────────────────────────────────────

class _DownloadFilterDialog extends StatefulWidget {
  final void Function({int? levelId, int? serviceId}) onConfirm;

  const _DownloadFilterDialog({required this.onConfirm});

  @override
  State<_DownloadFilterDialog> createState() => _DownloadFilterDialogState();
}

class _DownloadFilterDialogState extends State<_DownloadFilterDialog> {
  // null = all; otherwise the selected levelId
  int? _selectedLevelId;

  static const List<({int? id, String label})> _levels = [
    (id: null, label: 'الكل'),
    (id: 1, label: 'المرحلة 1'),
    (id: 2, label: 'المرحلة 2'),
    (id: 3, label: 'المرحلة 3'),
    (id: 4, label: 'المرحلة 4'),
    (id: 5, label: 'المرحلة 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(Icons.filter_list_rounded,
              color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 8),
          const Text('تحميل الأسماء'),
        ],
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('اختر المرحلة:',
                style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _levels
                  .map((level) => ChoiceChip(
                        label: Text(level.label),
                        selected: _selectedLevelId == level.id,
                        onSelected: (_) =>
                            setState(() => _selectedLevelId = level.id),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('إلغاء'),
        ),
        FilledButton.icon(
          icon: const Icon(Icons.download_rounded, size: 18),
          label: const Text('تحميل'),
          onPressed: () =>
              widget.onConfirm(levelId: _selectedLevelId, serviceId: null),
        ),
      ],
    );
  }
}

// ─── Stored-count badge ─────────────────────────────────────────────────────

class _StoredCountBadge extends StatelessWidget {
  final int count;
  const _StoredCountBadge({required this.count});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'أسماء محفوظة محلياً',
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: count > 0
              ? Theme.of(context).colorScheme.primaryContainer
              : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.storage_rounded,
                size: 14,
                color: count > 0
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Colors.grey),
            const SizedBox(width: 4),
            Text(
              '$count',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: count > 0
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
