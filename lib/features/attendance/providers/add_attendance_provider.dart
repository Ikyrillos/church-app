import 'dart:convert';

import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/services/app_shared_prefrence.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/core/widgets/toast_m.dart' show AppToast;
import 'package:abosiefienapp/features/attendance/models/add_attendance_model.dart';
import 'package:abosiefienapp/features/attendance/repository/add_class_attendance_repo.dart';
import 'package:abosiefienapp/features/attendance/repository/check_box_add_attendance_repo.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner_plus/flutter_barcode_scanner_plus.dart';
import 'package:intl/intl.dart' as intl;
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

part 'add_attendance_provider.g.dart';

enum DataState { loading, noData, loaded }

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

  AddAttendanceState({
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

@Riverpod(keepAlive: true)
class AddAttendanceNotifier extends _$AddAttendanceNotifier {
  final AddClassAttendanceRepo addClassAttendanceRepo = AddClassAttendanceRepo();
  final CheckBoxAddAttendanceRepository _repository =
      CheckBoxAddAttendanceRepository();
  final CustomFunctions customFunctions = CustomFunctions();

  @override
  AddAttendanceState build() {
    loadMakhdomsFromCache();
    loadNamesFromSharedPreferences();
    updateStoredDataCount();
    getPendingCount();
    initConnectivityListener();
    return AddAttendanceState();
  }

  // ─── DB initialisation ────────────────────────────────────────────────────

  Future<Database> initializeDB() async {
    final String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'data.db'),
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE Data (id INTEGER PRIMARY KEY, name TEXT)',
        );
        await db.execute(
          'CREATE TABLE PendingAttendanceBatches ('
          '  id INTEGER PRIMARY KEY AUTOINCREMENT,'
          '  attendanceDate TEXT NOT NULL,'
          '  makhdomsIdsJson TEXT NOT NULL,'
          '  points TEXT NOT NULL DEFAULT \'0\','
          '  createdAt TEXT NOT NULL'
          ')',
        );
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          await db.execute(
            'CREATE TABLE IF NOT EXISTS PendingAttendanceBatches ('
            '  id INTEGER PRIMARY KEY AUTOINCREMENT,'
            '  attendanceDate TEXT NOT NULL,'
            '  makhdomsIdsJson TEXT NOT NULL,'
            '  points TEXT NOT NULL DEFAULT \'0\','
            '  createdAt TEXT NOT NULL'
            ')',
          );
        }
      },
      version: 2,
    );
  }

  // ─── Connectivity / auto-sync ─────────────────────────────────────────────

  void initConnectivityListener() {
    final subscription =
        Connectivity().onConnectivityChanged.listen((results) {
      final isOnline = results.isNotEmpty &&
          results.any((r) => r != ConnectivityResult.none);
      if (isOnline && state.pendingSyncCount > 0) {
        syncPendingBatches();
      }
    });
    ref.onDispose(subscription.cancel);
  }

  // ─── Stored data count ────────────────────────────────────────────────────

  Future<void> updateStoredDataCount() async {
    try {
      final db = await initializeDB();
      final maps = await db.query('Data');
      state = state.copyWith(storedDataCount: maps.length);
    } catch (e) {
      printError('Failed to update stored data count: $e');
    }
  }

  // ─── Pending sync count ───────────────────────────────────────────────────

  Future<void> getPendingCount() async {
    try {
      final db = await initializeDB();
      final rows = await db.query('PendingAttendanceBatches');
      state = state.copyWith(pendingSyncCount: rows.length);
    } catch (e) {
      printError('Failed to get pending count: $e');
    }
  }

  // ─── Download names (with optional level / service filter) ────────────────

  Future<void> downloadNamesFiltered({int? levelId, int? serviceId}) async {
    state = state.copyWith(isLoading: true, dataState: DataState.loading);

    final Either<Failure, List<Map<String, dynamic>>> result =
        await _repository.getAllNamesFiltered(
            levelId: levelId, serviceId: serviceId);

    result.fold(
      (Failure l) {
        AppToast.showError(l.message);
        state = state.copyWith(isLoading: false, dataState: DataState.noData);
      },
      (List<Map<String, dynamic>> r) async {
        if (r.isNotEmpty) {
          await insertJsonData(r);
          final List<String> existingNames = r
              .where((item) => item['name'] != null)
              .map((item) => item['name'] as String)
              .toList();
          state = state.copyWith(names: existingNames);
          await saveNamesToSharedPreferences();
          await updateStoredDataCount();
          state =
              state.copyWith(isLoading: false, dataState: DataState.loaded);
          AppToast.showSuccess('تم تحديث قائمة الأسماء (${r.length})');
        } else {
          state = state.copyWith(isLoading: false, dataState: DataState.noData);
          AppToast.showError('لا توجد بيانات للتحميل');
        }
      },
    );
  }

  /// Legacy helper kept for backward compatibility with CheckBox screen.
  Future<void> saveJsonData() => downloadNamesFiltered();

  // ─── SQLite name cache helpers ────────────────────────────────────────────

  Future<void> insertJsonData(List<Map<String, dynamic>> data) async {
    final db = await initializeDB();
    final batch = db.batch();
    for (final item in data) {
      batch.insert(
        'Data',
        {'id': item['id'], 'name': item['name']},
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit();
  }

  // ─── Autocomplete search ──────────────────────────────────────────────────

  Future<void> searchByName(String query) async {
    if (query.trim().isEmpty) {
      state = state.copyWith(suggestions: []);
      return;
    }
    try {
      final db = await initializeDB();
      final rows = await db.query(
        'Data',
        where: 'name LIKE ?',
        whereArgs: ['%$query%'],
        limit: 10,
      );
      final results =
          rows.map((r) => AddAttendanceModel.fromJson(r)).toList();
      state = state.copyWith(suggestions: results);
    } catch (e) {
      printError('searchByName error: $e');
      state = state.copyWith(suggestions: []);
    }
  }

  /// Adds a person selected from the autocomplete dropdown.
  Future<void> addFromAutocomplete(AddAttendanceModel item) async {
    final alreadyAdded =
        state.localAttendanceMakhdoms.any((m) => m.id == item.id);
    if (alreadyAdded) {
      AppToast.showError('${item.name} مضاف بالفعل');
      return;
    }
    final newList = List<AddAttendanceModel>.from(state.localAttendanceMakhdoms)
      ..add(item);
    state = state.copyWith(
      localAttendanceMakhdoms: newList,
      suggestions: [],
    );
    await saveMakhdomsToCache();
  }

  // ─── Code / ID search ─────────────────────────────────────────────────────

  Future<void> findNameById(int id) async {
    final db = await initializeDB();
    final result = await db.query('Data', where: 'id = ?', whereArgs: [id]);

    if (result.isNotEmpty) {
      final makhdom = AddAttendanceModel.fromJson(result[0]);
      state = state.copyWith(foundName: makhdom.name, foundId: makhdom.id);

      if (!state.localAttendanceMakhdoms.any((m) => m.id == makhdom.id)) {
        final newList =
            List<AddAttendanceModel>.from(state.localAttendanceMakhdoms)
              ..add(makhdom);
        state = state.copyWith(localAttendanceMakhdoms: newList);
        await saveMakhdomsToCache();
      }
    } else {
      state = state.copyWith(foundName: null, foundId: null);
    }
  }

  void validateAndAdd(BuildContext context, String code) {
    if (code.isNotEmpty) {
      final parsedCode = int.tryParse(code);
      if (parsedCode != null) {
        findNameById(parsedCode).then((_) {
          if (state.foundId == null) {
            AppToast.showError('الاسم الذي تبحث عنه غير موجود');
          }
        });
      }
    } else {
      customFunctions.showError(
          message: 'يرجى ملء الحقول المطلوبة', context: context);
    }
  }

  // ─── Session list cache ───────────────────────────────────────────────────

  Future<void> saveMakhdomsToCache() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = jsonEncode(
        state.localAttendanceMakhdoms.map((e) => e.toJson()).toList());
    await prefs.setString('attendanceMakhdoms', jsonList);
  }

  Future<void> loadMakhdomsFromCache() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = prefs.getString('attendanceMakhdoms');
    if (jsonList != null) {
      final decoded = jsonDecode(jsonList) as List<dynamic>;
      final list =
          decoded.map((item) => AddAttendanceModel.fromJson(item)).toList();
      state = state.copyWith(localAttendanceMakhdoms: list);
    }
  }

  Future<void> saveNamesToSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('savedNames', state.names);
  }

  Future<void> loadNamesFromSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final savedNames = prefs.getStringList('savedNames');
    if (savedNames != null) {
      state = state.copyWith(names: savedNames);
    }
  }

  // ─── Remove items ─────────────────────────────────────────────────────────

  Future<void> removeMakhdom(int id) async {
    final newList =
        state.localAttendanceMakhdoms.where((m) => m.id != id).toList();
    state = state.copyWith(localAttendanceMakhdoms: newList);
    await saveMakhdomsToCache();
  }

  void removeAllList() {
    state = state.copyWith(localAttendanceMakhdoms: []);
    AppSharedPreferences.remove(
        SharedPreferencesKeys.KEY_LOCAL_ATTENDANCE_MAKHDOM_LIST);
  }

  // ─── Date helpers ─────────────────────────────────────────────────────────

  void setSelectedAttendanceDate(String? value) {
    if (value != null) state = state.copyWith(attendanceDate: value);
  }

  void convertToDate() {
    final now = DateTime.now();
    final formatted = intl.DateFormat('yyyy-MM-dd').format(now);
    state = state.copyWith(attendanceDate: formatted);
  }

  // ─── Save & Sync ──────────────────────────────────────────────────────────

  /// Main action: saves attendance locally or syncs online depending on connectivity.
  Future<bool> saveAndSync(BuildContext context, String points) async {
    if (state.localAttendanceMakhdoms.isEmpty) {
      customFunctions.showError(
          message: 'قائمة الحضور فارغة – أضف أسماء أولاً', context: context);
      return false;
    }

    if (state.attendanceDate.isEmpty) convertToDate();

    // connectivity_plus v7 returns List<ConnectivityResult>
    final connectivityResults = await Connectivity().checkConnectivity();
    final isOnline =
        connectivityResults.any((r) => r != ConnectivityResult.none);

    if (isOnline) {
      return _sendToApi(context, points);
    } else {
      return _saveLocalBatch(context, points);
    }
  }

  Future<bool> _sendToApi(BuildContext context, String points) async {
    state = state.copyWith(isLoading: true);
    customFunctions.showProgress(context);

    final makhdomsIds =
        state.localAttendanceMakhdoms.map((m) => m.id).toList();

    final Either<Failure, dynamic> response =
        await addClassAttendanceRepo.requestAddAttendance({
      'attendanceDate': state.attendanceDate,
      'makhdomsId': makhdomsIds,
      'points': points.isEmpty ? '0' : points,
    });

    bool success = false;
    response.fold(
      (Failure l) => AppToast.showError(l.message),
      (dynamic r) {
        AppToast.showSuccess('تمت إضافة الحضور بنجاح');
        removeAllList();
        success = true;
      },
    );

    customFunctions.hideProgress();
    state = state.copyWith(isLoading: false);
    return success;
  }

  Future<bool> _saveLocalBatch(BuildContext context, String points) async {
    try {
      final db = await initializeDB();
      final makhdomsIds =
          state.localAttendanceMakhdoms.map((m) => m.id).toList();
      await db.insert('PendingAttendanceBatches', {
        'attendanceDate': state.attendanceDate,
        'makhdomsIdsJson': jsonEncode(makhdomsIds),
        'points': points.isEmpty ? '0' : points,
        'createdAt': DateTime.now().toIso8601String(),
      });
      removeAllList();
      await getPendingCount();
      AppToast.showSuccess('تم الحفظ محلياً – سيتم المزامنة عند الاتصال');
      return true;
    } catch (e) {
      printError('Failed to save local batch: $e');
      AppToast.showError('فشل الحفظ المحلي');
      return false;
    }
  }

  /// Syncs all pending offline batches to the server.
  Future<void> syncPendingBatches() async {
    if (state.isSyncing) return;
    state = state.copyWith(isSyncing: true);

    try {
      final db = await initializeDB();
      final rows = await db.query('PendingAttendanceBatches');
      if (rows.isEmpty) {
        state = state.copyWith(isSyncing: false, pendingSyncCount: 0);
        return;
      }

      int syncedCount = 0;
      for (final row in rows) {
        final int rowId = row['id'] as int;
        final String attendanceDate = row['attendanceDate'] as String;
        final String makhdomsIdsJson = row['makhdomsIdsJson'] as String;
        final String points = row['points'] as String;

        final List<dynamic> ids = jsonDecode(makhdomsIdsJson);

        final Either<Failure, dynamic> response =
            await addClassAttendanceRepo.requestAddAttendance({
          'attendanceDate': attendanceDate,
          'makhdomsId': ids,
          'points': points,
        });

        response.fold(
          (Failure l) => printError('Sync failed for batch $rowId: ${l.message}'),
          (_) async {
            await db.delete('PendingAttendanceBatches',
                where: 'id = ?', whereArgs: [rowId]);
            syncedCount++;
          },
        );
      }

      await getPendingCount();
      if (syncedCount > 0) {
        AppToast.showSuccess('تمت مزامنة $syncedCount سجل');
      }
    } catch (e) {
      printError('syncPendingBatches error: $e');
    } finally {
      state = state.copyWith(isSyncing: false);
    }
  }

  // ─── QR scan ─────────────────────────────────────────────────────────────

  Future<void> scanCode() async {
    String barCodeScanRes;
    try {
      barCodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      barCodeScanRes = 'حدث خطأ ما برجاء المحاولة مرة أخرى';
    }
    state = state.copyWith(scanResult: barCodeScanRes);
  }
}
