// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_makhdom_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddMakhdomNotifier)
final addMakhdomProvider = AddMakhdomNotifierProvider._();

final class AddMakhdomNotifierProvider
    extends $NotifierProvider<AddMakhdomNotifier, AddMakhdomState> {
  AddMakhdomNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'addMakhdomProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$addMakhdomNotifierHash();

  @$internal
  @override
  AddMakhdomNotifier create() => AddMakhdomNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddMakhdomState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddMakhdomState>(value),
    );
  }
}

String _$addMakhdomNotifierHash() =>
    r'5ac71fd783053496d7ebbdf13702df143c9f46be';

abstract class _$AddMakhdomNotifier extends $Notifier<AddMakhdomState> {
  AddMakhdomState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AddMakhdomState, AddMakhdomState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AddMakhdomState, AddMakhdomState>,
        AddMakhdomState,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
