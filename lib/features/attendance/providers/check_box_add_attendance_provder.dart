
import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/services/app_shared_prefrence.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/core/widgets/toast_m.dart';
import 'package:abosiefienapp/features/attendance/models/add_Attendance.dart';
import 'package:abosiefienapp/features/attendance/repository/add_class_attendance_repo.dart';
import 'package:abosiefienapp/features/attendance/repository/check_box_add_attendance_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

import 'package:abosiefienapp/core/utils/app_debug_prints.dart';

part 'check_box_add_attendance_provder.g.dart';

enum DataState { loading, noData, loaded }

class CheckBoxAddAttendanceState {
  final List<AllNamesModel> data;
  final DataState dataState;
  final Map<String, bool> checkboxStates;
  final String attendanceDate;
  final String errorMsg;

  CheckBoxAddAttendanceState({
    this.data = const [],
    this.dataState = DataState.noData,
    this.checkboxStates = const {},
    this.attendanceDate = '',
    this.errorMsg = '',
  });

  CheckBoxAddAttendanceState copyWith({
    List<AllNamesModel>? data,
    DataState? dataState,
    Map<String, bool>? checkboxStates,
    String? attendanceDate,
    String? errorMsg,
  }) {
    return CheckBoxAddAttendanceState(
      data: data ?? this.data,
      dataState: dataState ?? this.dataState,
      checkboxStates: checkboxStates ?? this.checkboxStates,
      attendanceDate: attendanceDate ?? this.attendanceDate,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}

@Riverpod(keepAlive: true)
class CheckBoxAddAttendanceNotifier extends _$CheckBoxAddAttendanceNotifier {
  final CheckBoxAddAttendanceRepository _repository = CheckBoxAddAttendanceRepository();
  final AddClassAttendanceRepo addClassAttendanceRepo = AddClassAttendanceRepo();
  final CustomFunctions customFunctions = CustomFunctions();

  @override
  CheckBoxAddAttendanceState build() {
    return CheckBoxAddAttendanceState();
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

  Future<void> saveCheckboxState(String stateCheckBox, bool value) async {
    final newStates = Map<String, bool>.from(state.checkboxStates);
    newStates[stateCheckBox] = value;
    state = state.copyWith(checkboxStates: newStates);
    await AppSharedPreferences.setBool(stateCheckBox, value);
  }

  Future<void> loadCheckboxStates() async {
    final newStates = Map<String, bool>.from(state.checkboxStates);
    for (var item in state.data) {
      String idStr = item.id.toString();
      bool? val = AppSharedPreferences.getBool(idStr);
      newStates[idStr] = val ?? false;
        }
    state = state.copyWith(checkboxStates: newStates);
  }

  Future<void> insertJsonData(List<Map<String, dynamic>> data) async {
    Database db = await initializeDB();
    Batch batch = db.batch();
    for (var item in data) {
      batch.insert(
        'Data',
        {
          'id': item['id'],
          'name': item['name']
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit();
    // final List<Map<String, dynamic>> insertedData = await db.query('Data');
    // print('Data inserted into SQLite: $insertedData');
  }

  Future<void> saveJsonData() async {
    state = state.copyWith(dataState: DataState.loading);

    Either<Failure, List<Map<String, dynamic>>> jsonData =
        await _repository.getAllNames();

    jsonData.fold(
      (Failure l) {
        print('Failed to fetch data from repository: $l');
        state = state.copyWith(dataState: DataState.noData);
      },
      (List<Map<String, dynamic>> r) async {
        if (r.isNotEmpty) {
          await insertJsonData(r);
          await retrieveJsonData();
        } else {
          print('No data fetched from repository to insert into SQLite.');
          state = state.copyWith(dataState: DataState.noData);
        }
      },
    );
  }

  Future<void> retrieveJsonData() async {
    state = state.copyWith(dataState: DataState.loading);

    Database db = await initializeDB();
    final List<Map<String, dynamic>> maps = await db.query('Data');

    if (maps.isNotEmpty) {
      print('Data retrieved from SQLite: ${maps.length}');
      
      List<AllNamesModel> loadedData = maps.map((Map<String, dynamic> item) {
        return AllNamesModel.fromJson(item);
      }).toList();

      state = state.copyWith(data: loadedData);
      await loadCheckboxStates();
      state = state.copyWith(dataState: DataState.loaded);
    } else {
      print('No data found in SQLite.');
      state = state.copyWith(dataState: DataState.noData);
    }
  }

  Future<void> clearCheckboxStates() async {
    for (var item in state.data) {
      await AppSharedPreferences.remove(item.id.toString());
        }
    state = state.copyWith(checkboxStates: {});
  }

  Future<void> loadDataOnStart() async {
    state = state.copyWith(dataState: DataState.loading);

    await retrieveJsonData();

    if (state.data.isEmpty) {
      await saveJsonData();
    }

    if (state.data.isNotEmpty) {
      state = state.copyWith(dataState: DataState.loaded);
    } else {
      state = state.copyWith(dataState: DataState.noData);
    }
  }

  void convertToDate() {
    DateTime dayToday = DateTime.now();
    String finalFormattedDate =
        intl.DateFormat('yyyy-MM-dd').format(dayToday).toString();
    printDone('finalFormattedDate $finalFormattedDate');
    state = state.copyWith(attendanceDate: finalFormattedDate);
  }

  void setSelectedAttendanceDate(String date) {
    state = state.copyWith(attendanceDate: date);
  }

  Future<bool> addAttendance(BuildContext context) async {
    convertToDate();
    customFunctions.showProgress(context);

    List<int> selectedIds = state.checkboxStates.entries
        .where((entry) => entry.value == true)
        .map((entry) => int.tryParse(entry.key) ?? 0)
        .where((id) => id != 0)
        .toList();

    Either<Failure, dynamic> response =
        await addClassAttendanceRepo.requestAddAttendance({
      "attendanceDate": state.attendanceDate,
      "makhdomsId": selectedIds,
      "points": 0,
    });

    printDone('response $response');

    bool success = false;
    response.fold(
      (Failure l) {
        printError(l.message);
        ToastM.show(l.message);
        customFunctions.showError(
            message: 'An error occurred, please try again', context: context);
        success = false;
      },
      (r) {
        if (r != null && r['success'] == true) {
          state = state.copyWith(errorMsg: r["errorMsg"] ?? '');
          clearCheckboxStates();
          success = true;
        } else if (r != null && r['success'] == false) {
          customFunctions.showError(
              message: r["errorMsg"].toString(), context: context);
          success = false;
        }
      },
    );

    customFunctions.hideProgress();
    return success;
  }
}
