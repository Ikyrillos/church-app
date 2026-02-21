// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_makhdoms_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyMakhdomsNotifier)
final myMakhdomsProvider = MyMakhdomsNotifierProvider._();

final class MyMakhdomsNotifierProvider
    extends $NotifierProvider<MyMakhdomsNotifier, MyMakhdomsState> {
  MyMakhdomsNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'myMakhdomsProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$myMakhdomsNotifierHash();

  @$internal
  @override
  MyMakhdomsNotifier create() => MyMakhdomsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyMakhdomsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyMakhdomsState>(value),
    );
  }
}

String _$myMakhdomsNotifierHash() =>
    r'abacc75b43dee01a5f1ae1c9bf8ffd893839b022';

abstract class _$MyMakhdomsNotifier extends $Notifier<MyMakhdomsState> {
  MyMakhdomsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<MyMakhdomsState, MyMakhdomsState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<MyMakhdomsState, MyMakhdomsState>,
        MyMakhdomsState,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
