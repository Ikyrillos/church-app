import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:abosiefienapp/Providers/home_screen_provider.dart';
import 'package:abosiefienapp/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test('HomeScreenNotifier initializes with default attributes', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final state = container.read(homeScreenProvider);
    expect(state.user, isNull);
    expect(state.permisions, isEmpty);
    expect(state.hasGetMakhdomsPermission, isFalse);
    expect(state.hasManageMakhdomsPermission, isFalse);
    expect(state.hasaddclassattendancePermission, isFalse);
    expect(state.hasaaddattendancePermission, isFalse);
    expect(state.hasaaddMakhdomPermission, isFalse);
    expect(state.hasUpdateMakhdomsPermission, isFalse);
  });

  test('getPermisions parses valid user permissions properly', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(homeScreenProvider.notifier);

    // Simulate setting a user model directly into the state
    notifier.state = notifier.state.copyWith(
        user: UserModel(
            data: Data(permissions: [
      Permissions(permissionName: 'getmakhdoms'),
      Permissions(permissionName: 'add_makhdom'),
    ])));

    notifier.getPermisions();

    final state = container.read(homeScreenProvider);
    expect(state.hasGetMakhdomsPermission, isTrue);
    expect(state.hasaaddMakhdomPermission, isTrue);
    expect(state.hasManageMakhdomsPermission, isFalse);
    expect(state.permisions.contains('getmakhdoms'), isTrue);
  });
}
