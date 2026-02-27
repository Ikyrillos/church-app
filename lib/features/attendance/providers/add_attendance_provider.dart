import 'dart:convert';

import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/services/app_shared_prefrence.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/features/attendance/models/add_attendance_model.dart';
import 'package:abosiefienapp/features/attendance/repository/add_class_attendance_repo.dart';
import 'package:abosiefienapp/features/attendance/repository/check_box_add_attendance_repo.dart';
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
  final List<String> names;
  final String? foundName;
  final int? foundId;
  final String attendanceDate;
  final String scanResult;
  final DataState dataState;
  final bool isLoading;
  final String errorMsg;
  final int storedDataCount;

  AddAttendanceState({
    this.localAttendanceMakhdoms = const [],
    this.names = const [],
    this.foundName,
    this.foundId,
    this.attendanceDate = '',
    this.scanResult = '',
    this.dataState = DataState.noData,
    this.isLoading = false,
    this.errorMsg = '',
    this.storedDataCount = 0,
  });

  AddAttendanceState copyWith({
    List<AddAttendanceModel>? localAttendanceMakhdoms,
    List<String>? names,
    String? foundName,
    int? foundId,
    String? attendanceDate,
    String? scanResult,
    DataState? dataState,
    bool? isLoading,
    String? errorMsg,
    int? storedDataCount,
  }) {
    return AddAttendanceState(
      localAttendanceMakhdoms: localAttendanceMakhdoms ?? this.localAttendanceMakhdoms,
      names: names ?? this.names,
      foundName: foundName ?? this.foundName,
      foundId: foundId ?? this.foundId,
      attendanceDate: attendanceDate ?? this.attendanceDate,
      scanResult: scanResult ?? this.scanResult,
      dataState: dataState ?? this.dataState,
      isLoading: isLoading ?? this.isLoading,
      errorMsg: errorMsg ?? this.errorMsg,
      storedDataCount: storedDataCount ?? this.storedDataCount,
    );
  }
}

@Riverpod(keepAlive: true)
class AddAttendanceNotifier extends _$AddAttendanceNotifier {
  final AddClassAttendanceRepo addClassAttendanceRepo = AddClassAttendanceRepo();
  final CheckBoxAddAttendanceRepository _repository = CheckBoxAddAttendanceRepository();
  final CustomFunctions customFunctions = CustomFunctions();

  @override
  AddAttendanceState build() {
    loadMakhdomsFromCache();
    loadNamesFromSharedPreferences();
    updateStoredDataCount();
    return AddAttendanceState();
  }

  Future<void> updateStoredDataCount() async {
    try {
      Database db = await initializeDB();
      final List<Map<String, dynamic>> maps = await db.query('Data');
      state = state.copyWith(storedDataCount: maps.length);
    } catch (e) {
      printError('Failed to update stored data count: $e');
    }
  }

  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'data.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE Data (id INTEGER PRIMARY KEY, name TEXT)",
        );
      },
      version: 1,
    );
  }

  Future<void> findNameById(int id) async {
    Database db = await initializeDB();
    final List<Map<String, dynamic>> result = await db.query(
      'Data',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (result.isNotEmpty) {
      String name = result[0]['name'];
      int makhdomId = result[0]['id'];
      
      AddAttendanceModel makhdom = AddAttendanceModel.fromJson(result[0]);

      state = state.copyWith(foundName: name, foundId: makhdomId);

      // Add to local list if not exists
      if (!state.localAttendanceMakhdoms.any((item) => item.id == makhdomId)) {
        final newList = List<AddAttendanceModel>.from(state.localAttendanceMakhdoms)..add(makhdom);
        state = state.copyWith(localAttendanceMakhdoms: newList);
        await saveMakhdomsToCache();
      }
    } else {
      state = state.copyWith(foundName: null, foundId: null);
      print('Name not found for id: $id');
    }
  }

  Future<void> addMakhdom(int id, String name) async {
    Database db = await initializeDB();
    final List<Map<String, dynamic>> existing = await db.query(
      'Data',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (existing.isEmpty) {
      await db.insert(
        'Data',
        {'id': id, 'name': name},
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<void> saveMakhdomsToCache() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonList = jsonEncode(state.localAttendanceMakhdoms.map((e) => e.toJson()).toList());
    await prefs.setString('attendanceMakhdoms', jsonList);
  }

  Future<void> loadMakhdomsFromCache() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonList = prefs.getString('attendanceMakhdoms');
    if (jsonList != null) {
      List<dynamic> decodedList = jsonDecode(jsonList);
      List<AddAttendanceModel> list = decodedList.map((item) => AddAttendanceModel.fromJson(item)).toList();
      state = state.copyWith(localAttendanceMakhdoms: list);
    }
  }

  Future<void> saveNamesToSharedPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('savedNames', state.names);
  }

  Future<void> loadNamesFromSharedPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedNames = prefs.getStringList('savedNames');
    if (savedNames != null) {
      state = state.copyWith(names: savedNames);
    }
  }

  Future<void> insertJsonData(List<Map<String, dynamic>> data) async {
    Database db = await initializeDB();
    Batch batch = db.batch();
    for (var item in data) {
      batch.insert(
        'Data',
        {'id': item['id'], 'name': item['name']},
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit();
  }

  Future<void> saveJsonData() async {
    state = state.copyWith(isLoading: true, dataState: DataState.loading);

    Either<Failure, List<Map<String, dynamic>>> jsonData = await _repository.getAllNames();

    jsonData.fold(
      (Failure l) {
        state = state.copyWith(isLoading: false, dataState: DataState.noData);
      },
      (List<Map<String, dynamic>> r) async {
        if (r.isNotEmpty) {
          await insertJsonData(r);
          List<String> existingNames = [];
          for (Map<String, dynamic> item in r) {
            if (item['name'] != null) {
              existingNames.add(item['name'] as String);
            }
          }
          state = state.copyWith(names: existingNames);
          await saveNamesToSharedPreferences();
          state = state.copyWith(isLoading: false);
        } else {
          state = state.copyWith(isLoading: false, dataState: DataState.noData);
        }
      },
    );
  }

  void validateAndAdd(BuildContext context, String code) {
      // Replaced the context-heavy validation logic with a clean method
      // Caller (UI) should validate form first
      if (code.isNotEmpty) {
         int? parsedCode = int.tryParse(code);
         if (parsedCode != null) {
             findNameById(parsedCode).then((_) {
                 if (state.foundId != null && state.foundName != null) {
                     addMakhdom(state.foundId!, state.foundName!);
                 } else {
                     customFunctions.showError(
                        message: 'الاسم الذي تبحث عنه غير موجودة',
                        context: context
                     );
                 }
             });
         }
      } else {
          customFunctions.showError(message: 'يرجى ملء الحقول المطلوبة', context: context);
      }
  }

  void setSelectedAttendanceDate(String? value) {
    if (value != null) {
      state = state.copyWith(attendanceDate: value);
    }
  }

  void convertToDate() {
    DateTime dayToday = DateTime.now();
    String finalFormatedDate = intl.DateFormat('yyyy-MM-dd').format(dayToday).toString();
    state = state.copyWith(attendanceDate: finalFormatedDate);
  }

  void removeMakhdom(int id) async {
    final newList = state.localAttendanceMakhdoms.where((m) => m.id != id).toList();
    state = state.copyWith(localAttendanceMakhdoms: newList);
    
    Database db = await initializeDB();
    await db.delete('Data', where: 'id = ?', whereArgs: [id]);
    await saveMakhdomsToCache(); // Should save the list state not just delete from DB? 
    // The original code deleted from DB and removed from local list.
  }

  void removeAllList() {
    state = state.copyWith(localAttendanceMakhdoms: []);
    AppSharedPreferences.remove(SharedPreferencesKeys.KEY_LOCAL_ATTENDANCE_MAKHDOM_LIST);
  }

  Future<bool> addAttendance(BuildContext context, String points) async {
    convertToDate();
    state = state.copyWith(isLoading: true);
    customFunctions.showProgress(context);

    List<String> makhdomsIds = state.localAttendanceMakhdoms
        .map((m) => m.id.toString())
        .toList();

    Either<Failure, dynamic> response = await addClassAttendanceRepo.requestAddAttendance({
      "attendanceDate": state.attendanceDate,
      "makhdomsId": makhdomsIds,
      "points": points,
    });

    bool success = false;
    response.fold(
      (Failure l) {
        customFunctions.showError(message: l.message ?? 'Error', context: context);
        success = false;
      },
      (dynamic r) {
        customFunctions.showSuccess(message: 'تمت إضافة الحضور بنجاح', context: context);
        success = true;
      },
    );

    customFunctions.hideProgress();
    state = state.copyWith(isLoading: false);
    return success;
  }

  Future<void> scanCode() async {
    String barCodeScanRes;
    try {
      barCodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      barCodeScanRes = 'حدث خطأ ما برجاء المحاولة مرة اخري';
    }
    state = state.copyWith(scanResult: barCodeScanRes);
    // Note: The UI should listen to this change and update the controller text if needed
  }
}
