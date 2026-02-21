import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:abosiefienapp/Providers/login_provider.dart';
import 'package:abosiefienapp/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:abosiefienapp/repositories/login_repo.dart';
import 'package:abosiefienapp/core/utils/custom_function.dart';
import 'package:abosiefienapp/core/errors/failures.dart';
import 'package:abosiefienapp/core/shared_prefrence/app_shared_prefrence.dart';

class MockLoginRepo extends Mock implements LoginRepo {}

class MockCustomFunctions extends Mock implements CustomFunctions {}

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  late MockLoginRepo mockLoginRepo;
  late MockCustomFunctions mockCustomFunctions;
  late MockBuildContext mockBuildContext;

  setUpAll(() {
    registerFallbackValue(MockBuildContext());
  });

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await AppSharedPreferences.init();
    mockLoginRepo = MockLoginRepo();
    mockCustomFunctions = MockCustomFunctions();
    mockBuildContext = MockBuildContext();
  });

  test('LoginNotifier initializes with empty state', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final state = container.read(loginProvider);
    expect(state.user, isNull);
    expect(state.version, '');
  });

  test('setUser updates the state with UserModel', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(loginProvider.notifier);
    final user = UserModel(data: Data(userName: 'testUser'));
    notifier.setUser(user);

    final state = container.read(loginProvider);
    expect(state.user, user);
    expect(state.user?.data?.userName, 'testUser');
  });

  test('login API call works correctly and updates token when successful',
      () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(loginProvider.notifier);

    // Inject mocks
    notifier.loginRepo = mockLoginRepo;
    notifier.customFunctions = mockCustomFunctions;

    // Define success response
    final fakeUser =
        UserModel(data: Data(userName: 'testUser', token: 'mockToken'));
    when(() => mockCustomFunctions.showProgress(any())).thenReturn(null);
    when(() => mockCustomFunctions.hideProgress()).thenReturn(null);
    when(() => mockLoginRepo.requestLogin('test_user', 'password'))
        .thenAnswer((_) async => Right(fakeUser));

    // Note: since build context pushNamedAndRemoveUntil is called, it might throw if not fully mocked,
    // it's an extension. Riverpod testing usually avoids BuildContext but here we test the flow:
    // So we just mock the navigation extension if we can, or just catch it.
    try {
      await notifier.login('test_user', 'password', mockBuildContext);
    } catch (e) {
      // Ignored because context.pushNamedAndRemoveUntil depends on Navigator logic via extension.
    }

    // Verify side-effects
    verify(() => mockCustomFunctions.showProgress(mockBuildContext)).called(1);
    verify(() => mockCustomFunctions.hideProgress()).called(2);

    // Check Shared Preferences
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getString('accessToken'), 'mockToken');
  });

  test('login API call shows error on failure', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(loginProvider.notifier);

    // Inject mocks
    notifier.loginRepo = mockLoginRepo;
    notifier.customFunctions = mockCustomFunctions;

    when(() => mockCustomFunctions.showProgress(any())).thenReturn(null);
    when(() => mockCustomFunctions.hideProgress()).thenReturn(null);
    when(() => mockCustomFunctions.showError(
        message: any(named: 'message'),
        context: any(named: 'context'))).thenReturn(null);
    when(() => mockLoginRepo.requestLogin('test_user', 'wrong_pass'))
        .thenAnswer((_) async => Left(ServerFailure('Invalid Credentials')));

    final result =
        await notifier.login('test_user', 'wrong_pass', mockBuildContext);
    expect(result, isNull);

    verify(() => mockCustomFunctions.showError(
        message: 'Invalid Credentials', context: mockBuildContext)).called(1);
  });
}
