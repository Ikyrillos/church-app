import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:abosiefienapp/Providers/add_makhdom_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:abosiefienapp/repositories/add_makhdom_repo.dart';
import 'package:abosiefienapp/repositories/khadem_repo.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/model/khadem_model.dart' as khm;

class MockAddMakhdomRepo extends Mock implements AddMakhdomRepo {}

class MockKhademRepo extends Mock implements KhademRepo {}

class MockCustomFunctions extends Mock implements CustomFunctions {}

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  late MockAddMakhdomRepo mockAddMakhdomRepo;
  late MockKhademRepo mockKhademRepo;
  late MockCustomFunctions mockCustomFunctions;
  late MockBuildContext mockBuildContext;

  setUpAll(() {
    registerFallbackValue(MockBuildContext());
  });

  setUp(() {
    mockAddMakhdomRepo = MockAddMakhdomRepo();
    mockKhademRepo = MockKhademRepo();
    mockCustomFunctions = MockCustomFunctions();
    mockBuildContext = MockBuildContext();
  });

  test(
      'AddMakhdomNotifier initializes with empty dropdownList and selectedKhadem = 2',
      () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final state = container.read(addMakhdomProvider);
    expect(state.dropdownList, isEmpty);
    expect(state.selectedKhadem, 2);
  });

  test('setSelectedKhadem updates the state', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(addMakhdomProvider.notifier);
    notifier.setSelectedKhadem(5);

    final state = container.read(addMakhdomProvider);
    expect(state.selectedKhadem, 5);
  });

  test('changeBirthdate updates the state with formatted date', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(addMakhdomProvider.notifier);
    notifier.changeBirthdate(DateTime(2023, 11, 21));

    final state = container.read(addMakhdomProvider);
    expect(state.birthdate, '2023-11-21');
  });

  test('clearForm resets state and text controllers', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(addMakhdomProvider.notifier);

    // Set some data
    notifier.nameController.text = 'Test Name';
    notifier.changeBirthdate(DateTime(2023, 11, 21));
    notifier.setSelectedKhadem(5);
    notifier.genderValue.value = 2;

    // Clear form
    notifier.clearForm();

    final state = container.read(addMakhdomProvider);

    expect(state.birthdate, '');
    expect(state.selectedKhadem, 2);
    expect(notifier.nameController.text, '');
    expect(notifier.genderValue.value, 1);
  });

  test('addMyMakhdom API call succeeds and clears form', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(addMakhdomProvider.notifier);

    notifier.addMakhdomRepo = mockAddMakhdomRepo;
    notifier.customFunctions = mockCustomFunctions;

    when(() => mockCustomFunctions.showProgress(any())).thenReturn(null);
    when(() => mockCustomFunctions.hideProgress()).thenReturn(null);
    when(() => mockCustomFunctions.showSuccess(
        message: any(named: 'message'),
        context: any(named: 'context'))).thenReturn(null);

    // Mock API success with true
    when(() => mockAddMakhdomRepo.requestAddMakhdom(any()))
        .thenAnswer((_) async => Right(true));

    final result = await notifier.addMyMakhdom(mockBuildContext, {});

    expect(result, isTrue);

    verify(() => mockCustomFunctions.showProgress(mockBuildContext)).called(1);
    verify(() => mockCustomFunctions.showSuccess(
        message: 'تم الإضافة بنجاح', context: mockBuildContext)).called(1);
    verify(() => mockCustomFunctions.hideProgress()).called(1);
  });

  test('addMyMakhdom API call shows error on failure', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(addMakhdomProvider.notifier);

    notifier.addMakhdomRepo = mockAddMakhdomRepo;
    notifier.customFunctions = mockCustomFunctions;

    when(() => mockCustomFunctions.showProgress(any())).thenReturn(null);
    when(() => mockCustomFunctions.hideProgress()).thenReturn(null);
    when(() => mockCustomFunctions.showError(
        message: any(named: 'message'),
        context: any(named: 'context'))).thenReturn(null);

    when(() => mockAddMakhdomRepo.requestAddMakhdom(any()))
        .thenAnswer((_) async => Left(ServerFailure('API Error')));

    final result = await notifier.addMyMakhdom(mockBuildContext, {});

    expect(result, isFalse);

    verify(() => mockCustomFunctions.showError(
        message: 'لم يتم الإضافة', context: mockBuildContext)).called(1);
  });

  test('getkhadem retrieves data and creates dropdown list on success',
      () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(addMakhdomProvider.notifier);

    notifier.khademRepo = mockKhademRepo;
    notifier.customFunctions = mockCustomFunctions;

    final fakeResponse = khm.KhademModel.fromJson({
      'data': [
        {'id': 1, 'name': 'Khadem 1', 'makhdomsCount': 5}
      ]
    });

    when(() => mockKhademRepo.requestGetKhadem())
        .thenAnswer((_) async => Right(fakeResponse));

    final result = await notifier.getkhadem(mockBuildContext);

    final state = container.read(addMakhdomProvider);

    expect(result, isTrue);
    expect(state.allKhodam?.length, 1);
    expect(state.dropdownList?.length, 1);
    expect(state.dropdownList?.first.name, 'Khadem 1');
  });

  test('getkhadem returns false on failure', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(addMakhdomProvider.notifier);

    notifier.khademRepo = mockKhademRepo;
    notifier.customFunctions = mockCustomFunctions;

    when(() => mockKhademRepo.requestGetKhadem())
        .thenAnswer((_) async => Left(ServerFailure('Error')));

    final result = await notifier.getkhadem(mockBuildContext);

    expect(result, isFalse);
  });
}
