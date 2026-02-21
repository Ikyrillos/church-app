import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:abosiefienapp/Providers/my_makhdoms_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:abosiefienapp/repositories/my_makhdoms_repo.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/model/mymakhdoms_model.dart' as mm;

class MockMyMakhdomsRepo extends Mock implements MyMakhdomsRepo {}

class MockCustomFunctions extends Mock implements CustomFunctions {}

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  late MockMyMakhdomsRepo mockMyMakhdomsRepo;
  late MockCustomFunctions mockCustomFunctions;
  late MockBuildContext mockBuildContext;

  setUpAll(() {
    registerFallbackValue(MockBuildContext());
  });

  setUp(() {
    mockMyMakhdomsRepo = MockMyMakhdomsRepo();
    mockCustomFunctions = MockCustomFunctions();
    mockBuildContext = MockBuildContext();
  });

  test('MyMakhdomsNotifier initializes with empty state', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final state = container.read(myMakhdomsProvider);
    expect(state.items, isEmpty);
    expect(state.allMakhdoms, isEmpty);
    expect(state.sortCoulmn, 1);
    expect(state.sortDirection, 1);
    expect(state.absentDate, '');
  });

  test('setSelectedAbsentDate updates the absentDate state', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(myMakhdomsProvider.notifier);
    notifier.setSelectedAbsentDate('2023-11-21');

    final state = container.read(myMakhdomsProvider);
    expect(state.absentDate, '2023-11-21');
  });

  test('clearFilterDate resets absentDate', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(myMakhdomsProvider.notifier);
    notifier.setSelectedAbsentDate('2023-11-21');
    notifier.clearFilterDate();

    final state = container.read(myMakhdomsProvider);
    expect(state.absentDate, '');
  });

  test('setSelectedSortColumn and setSelectedSortDir update the state', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(myMakhdomsProvider.notifier);

    notifier.setSelectedSortColumn(2);
    notifier.setSelectedSortDir(2);

    final state = container.read(myMakhdomsProvider);
    expect(state.sortCoulmn, 2);
    expect(state.sortDirection, 2);
  });

  test('myMakhdoms API call populates items and allMakhdoms on success',
      () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(myMakhdomsProvider.notifier);

    notifier.myMakhdomsRepo = mockMyMakhdomsRepo;
    notifier.customFunctions = mockCustomFunctions;

    when(() => mockCustomFunctions.showProgress(any())).thenReturn(null);
    when(() => mockCustomFunctions.hideProgress()).thenReturn(null);

    final fakeResponse = mm.MyMakhdomsModel.fromJson({
      'data': [
        {'id': 1, 'name': 'Makhdom 1'}
      ],
      'errorMsg': 'Success'
    });

    when(() => mockMyMakhdomsRepo.requestMyMakhdoms(any(), any(), any()))
        .thenAnswer((_) async => Right(fakeResponse));

    final result = await notifier.myMakhdoms(mockBuildContext);
    final state = container.read(myMakhdomsProvider);

    expect(result, isTrue);
    expect(state.items.length, 1);
    expect(state.allMakhdoms.length, 1);
    expect(state.allMakhdoms.first.name, 'Makhdom 1');
    expect(state.listLength, 1);

    verify(() => mockCustomFunctions.showProgress(mockBuildContext)).called(1);
    verify(() => mockCustomFunctions.hideProgress()).called(1);
  });

  test('myMakhdoms API call shows error on failure', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(myMakhdomsProvider.notifier);

    notifier.myMakhdomsRepo = mockMyMakhdomsRepo;
    notifier.customFunctions = mockCustomFunctions;

    when(() => mockCustomFunctions.showProgress(any())).thenReturn(null);
    when(() => mockCustomFunctions.hideProgress()).thenReturn(null);
    when(() => mockCustomFunctions.showError(
        message: any(named: 'message'),
        context: any(named: 'context'))).thenReturn(null);

    when(() => mockMyMakhdomsRepo.requestMyMakhdoms(any(), any(), any()))
        .thenAnswer((_) async => Left(ServerFailure('API Error')));

    final result = await notifier.myMakhdoms(mockBuildContext);

    expect(result, isFalse);

    // Initial state errorMsg is used 'حدث خطأ ما برجاء المحاولة مرة اّخرى'
    verify(() => mockCustomFunctions.showError(
        message: 'حدث خطأ ما برجاء المحاولة مرة اّخرى',
        context: mockBuildContext)).called(1);
    verify(() => mockCustomFunctions.hideProgress()).called(1);
  });
}
