import 'dart:convert';

import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/services/app_shared_prefrence.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/core/widgets/toast_m.dart' show AppToast;
import 'package:abosiefienapp/features/attendance/data/dtos/attendance_request_dto.dart';
import 'package:abosiefienapp/features/attendance/data/dtos/name_filter_dto.dart';
import 'package:abosiefienapp/features/attendance/domain/models/pending_batch.dart';
import 'package:abosiefienapp/features/attendance/models/add_attendance_model.dart';
import 'package:abosiefienapp/features/attendance/providers/attendance_providers.dart';
import 'package:abosiefienapp/features/attendance/repository/attendance_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner_plus/flutter_barcode_scanner_plus.dart';
import 'package:intl/intl.dart' as intl;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

part 'add_attendance_provider.g.dart';

enum DataState { loading, noData, loaded }

// ── State ─────────────────────────────────────────────────────────────────────

class AddAttendanceState {
  final List<AddAttendanceModel> localAttendanceMakhdoms;
  final List<AddAttendanceModel> suggestions;
  final List<String> names;
  final String? foundName;
  final int? foundId;
  final String attendanceDate;
  final String scanResult;
  final DataState dataState;
  final bool isLoading;
  final bool isSyncing;
  final String errorMsg;
  final int storedDataCount;
  final int pendingSyncCount;

  const AddAttendanceState({
    this.localAttendanceMakhdoms = const [],
    this.suggestions = const [],
    this.names = const [],
    this.foundName,
    this.foundId,
    this.attendanceDate = '',
    this.scanResult = '',
    this.dataState = DataState.noData,
    this.isLoading = false,
    this.isSyncing = false,
    this.errorMsg = '',
    this.storedDataCount = 0,
    this.pendingSyncCount = 0,
  });

  AddAttendanceState copyWith({
    List<AddAttendanceModel>? localAttendanceMakhdoms,
    List<AddAttendanceModel>? suggestions,
    List<String>? names,
    String? foundName,
    int? foundId,
    String? attendanceDate,
    String? scanResult,
    DataState? dataState,
    bool? isLoading,
    bool? isSyncing,
    String? errorMsg,
    int? storedDataCount,
    int? pendingSyncCount,
  }) {
    return AddAttendanceState(
      localAttendanceMakhdoms:
          localAttendanceMakhdoms ?? this.localAttendanceMakhdoms,
      suggestions: suggestions ?? this.suggestions,
      names: names ?? this.names,
      foundName: foundName ?? this.foundName,
      foundId: foundId ?? this.foundId,
      attendanceDate: attendanceDate ?? this.attendanceDate,
      scanResult: scanResult ?? this.scanResult,
      dataState: dataState ?? this.dataState,
      isLoading: isLoading ?? this.isLoading,
      isSyncing: isSyncing ?? this.isSyncing,
      errorMsg: errorMsg ?? this.errorMsg,
      storedDataCount: storedDataCount ?? this.storedDataCount,
      pendingSyncCount: pendingSyncCount ?? this.pendingSyncCount,
    );
  }
}

// ── Notifier ──────────────────────────────────────────────────────────────────

@Riverpod(keepAlive: true)
class AddAttendanceNotifier extends _$AddAttendanceNotifier {
  final CustomFunctions _customFunctions = CustomFunctions();

  // Lazy accessor keeps the reference fresh across rebuilds.
  AttendanceRepository get _repo => ref.read(attendanceRepositoryProvider);

  @override
  AddAttendanceState build() {
    _init();
    _initConnectivityListener();
    return const AddAttendanceState();
  }

  Future<void> _init() async {
    await Future.wait([
      _loadMakhdomsFromCache(),
      _loadNamesFromSharedPreferences(),
    ]);
    _refreshCounts();
  }

  // ── Connectivity / auto-sync ────────────────────────────────────────────

  void _initConnectivityListener() {
    final sub = Connectivity().onConnectivityChanged.listen((results) {
      final isOnline =
          results.isNotEmpty && results.any((r) => r != ConnectivityResult.none);
      if (isOnline && state.pendingSyncCount > 0) syncPendingBatches();
    });
    ref.onDispose(sub.cancel);
  }

  // ── Download names ──────────────────────────────────────────────────────

  Future<void> downloadNamesFiltered({int? levelId, int? serviceId}) async {
    state = state.copyWith(isLoading: true, dataState: DataState.loading);

    final result = await _repo.fetchNames(
      NameFilterDto(levelId: levelId, serviceId: serviceId),
    );

    result.fold(
      (Failure failure) {
        AppToast.showError(failure.message);
        state = state.copyWith(isLoading: false, dataState: DataState.noData);
      },
      (List<AddAttendanceModel> names) {
        if (names.isEmpty) {
          state =
              state.copyWith(isLoading: false, dataState: DataState.noData);
          AppToast.showError('لا توجد بيانات للتحميل');
          return;
        }
        _repo.replaceAllNames(names);
        final nameStrings = names.map((n) => n.name).toList();
        state = state.copyWith(
          names: nameStrings,
          isLoading: false,
          dataState: DataState.loaded,
          storedDataCount: _repo.countStoredNames(),
        );
        _saveNamesToSharedPreferences(nameStrings);
        AppToast.showSuccess('تم تحديث قائمة الأسماء (${names.length})');
      },
    );
  }

  /// Legacy alias kept for backward compatibility.
  Future<void> saveJsonData() => downloadNamesFiltered();

  // ── Autocomplete search ─────────────────────────────────────────────────

  void searchByName(String query) {
    if (query.trim().isEmpty) {
      state = state.copyWith(suggestions: []);
      return;
    }
    try {
      state = state.copyWith(suggestions: _repo.searchByName(query));
    } catch (e) {
      printError('searchByName error: $e');
      state = state.copyWith(suggestions: []);
    }
  }

  Future<void> addFromAutocomplete(AddAttendanceModel item) async {
    if (state.localAttendanceMakhdoms.any((m) => m.id == item.id)) {
      AppToast.showError('${item.name} مضاف بالفعل');
      return;
    }
    final newList = [...state.localAttendanceMakhdoms, item];
    state = state.copyWith(localAttendanceMakhdoms: newList, suggestions: []);
    await _saveMakhdomsToCache();
  }

  // ── Code / ID search ────────────────────────────────────────────────────

  Future<void> findNameById(int id) async {
    final makhdom = _repo.findById(id);
    if (makhdom == null) {
      state = state.copyWith(foundName: null, foundId: null);
      return;
    }
    state = state.copyWith(foundName: makhdom.name, foundId: makhdom.id);
    if (!state.localAttendanceMakhdoms.any((m) => m.id == makhdom.id)) {
      state = state.copyWith(
        localAttendanceMakhdoms: [...state.localAttendanceMakhdoms, makhdom],
      );
      await _saveMakhdomsToCache();
    }
  }

  void validateAndAdd(BuildContext context, String code) {
    if (code.isEmpty) {
      _customFunctions.showError(
          message: 'يرجى ملء الحقول المطلوبة', context: context);
      return;
    }
    final parsed = int.tryParse(code);
    if (parsed != null) {
      findNameById(parsed).then((_) {
        if (state.foundId == null) {
          AppToast.showError('الاسم الذي تبحث عنه غير موجود');
        }
      });
    }
  }

  // ── Session list ────────────────────────────────────────────────────────

  Future<void> removeMakhdom(int id) async {
    state = state.copyWith(
      localAttendanceMakhdoms:
          state.localAttendanceMakhdoms.where((m) => m.id != id).toList(),
    );
    await _saveMakhdomsToCache();
  }

  void removeAllList() {
    state = state.copyWith(localAttendanceMakhdoms: []);
    AppSharedPreferences.remove(
        SharedPreferencesKeys.KEY_LOCAL_ATTENDANCE_MAKHDOM_LIST);
  }

  // ── Date helpers ─────────────────────────────────────────────────────────

  void setSelectedAttendanceDate(String? value) {
    if (value != null) state = state.copyWith(attendanceDate: value);
  }

  void convertToDate() {
    state = state.copyWith(
      attendanceDate: intl.DateFormat('yyyy-MM-dd').format(DateTime.now()),
    );
  }

  // ── Save & Sync ──────────────────────────────────────────────────────────

  Future<bool> saveAndSync(BuildContext context, String points) async {
    if (state.localAttendanceMakhdoms.isEmpty) {
      _customFunctions.showError(
          message: 'قائمة الحضور فارغة – أضف أسماء أولاً', context: context);
      return false;
    }
    if (state.attendanceDate.isEmpty) convertToDate();

    final results = await Connectivity().checkConnectivity();
    final isOnline = results.any((r) => r != ConnectivityResult.none);

    return isOnline ? _sendToApi(points) : _saveLocalBatch(points);
  }

  Future<bool> _sendToApi(String points) async {
    state = state.copyWith(isLoading: true);

    final dto = AttendanceRequestDto(
      attendanceDate: state.attendanceDate,
      makhdomsId: state.localAttendanceMakhdoms.map((m) => m.id).toList(),
      points: points.isEmpty ? '0' : points,
    );

    final Either<Failure, void> response = await _repo.submitAttendance(dto);

    bool success = false;
    response.fold(
      (Failure l) => AppToast.showError(l.message),
      (_) {
        AppToast.showSuccess('تمت إضافة الحضور بنجاح');
        removeAllList();
        success = true;
      },
    );

    state = state.copyWith(isLoading: false);
    return success;
  }

  Future<bool> _saveLocalBatch(String points) async {
    try {
      _repo.insertPendingBatch(PendingBatch(
        attendanceDate: state.attendanceDate,
        makhdomsIds: state.localAttendanceMakhdoms.map((m) => m.id).toList(),
        points: points.isEmpty ? '0' : points,
        createdAt: DateTime.now(),
      ));
      removeAllList();
      _refreshCounts();
      AppToast.showSuccess('تم الحفظ محلياً – سيتم المزامنة عند الاتصال');
      return true;
    } catch (e) {
      printError('_saveLocalBatch error: $e');
      AppToast.showError('فشل الحفظ المحلي');
      return false;
    }
  }

  Future<void> syncPendingBatches() async {
    if (state.isSyncing) return;
    state = state.copyWith(isSyncing: true);

    try {
      final batches = _repo.getPendingBatches();
      if (batches.isEmpty) {
        state = state.copyWith(isSyncing: false, pendingSyncCount: 0);
        return;
      }

      int syncedCount = 0;
      for (final batch in batches) {
        final Either<Failure, void> result = await _repo.submitAttendance(
          AttendanceRequestDto(
            attendanceDate: batch.attendanceDate,
            makhdomsId: batch.makhdomsIds,
            points: batch.points,
          ),
        );
        result.fold(
          (Failure l) =>
              printError('Sync failed for batch ${batch.id}: ${l.message}'),
          (_) {
            _repo.deletePendingBatch(batch.id!);
            syncedCount++;
          },
        );
      }

      _refreshCounts();
      if (syncedCount > 0) AppToast.showSuccess('تمت مزامنة $syncedCount سجل');
    } catch (e) {
      printError('syncPendingBatches error: $e');
    } finally {
      state = state.copyWith(isSyncing: false);
    }
  }

  // ── QR scan ─────────────────────────────────────────────────────────────

  Future<void> scanCode() async {
    String result;
    try {
      result = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      result = 'حدث خطأ ما برجاء المحاولة مرة أخرى';
    }
    state = state.copyWith(scanResult: result);
  }

  // ── Private helpers ──────────────────────────────────────────────────────

  void _refreshCounts() {
    state = state.copyWith(
      storedDataCount: _repo.countStoredNames(),
      pendingSyncCount: _repo.countPendingBatches(),
    );
  }

  Future<void> _saveMakhdomsToCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'attendanceMakhdoms',
      jsonEncode(state.localAttendanceMakhdoms.map((e) => e.toJson()).toList()),
    );
  }

  Future<void> _loadMakhdomsFromCache() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString('attendanceMakhdoms');
    if (raw == null) return;
    final list = (jsonDecode(raw) as List)
        .map((e) => AddAttendanceModel.fromJson(e as Map<String, dynamic>))
        .toList();
    state = state.copyWith(localAttendanceMakhdoms: list);
  }

  Future<void> _saveNamesToSharedPreferences(List<String> names) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('savedNames', names);
  }

  Future<void> _loadNamesFromSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getStringList('savedNames');
    if (saved != null) state = state.copyWith(names: saved);
  }
}
