// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeScreenNotifier)
final homeScreenProvider = HomeScreenNotifierProvider._();

final class HomeScreenNotifierProvider
    extends $NotifierProvider<HomeScreenNotifier, HomeScreenState> {
  HomeScreenNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'homeScreenProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$homeScreenNotifierHash();

  @$internal
  @override
  HomeScreenNotifier create() => HomeScreenNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeScreenState>(value),
    );
  }
}

String _$homeScreenNotifierHash() =>
    r'4b10f9a1ed5623a0b9402fbbb55c4f682670d9f5';

abstract class _$HomeScreenNotifier extends $Notifier<HomeScreenState> {
  HomeScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<HomeScreenState, HomeScreenState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<HomeScreenState, HomeScreenState>,
        HomeScreenState,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
