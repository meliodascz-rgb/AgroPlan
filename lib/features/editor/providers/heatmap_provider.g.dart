// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heatmap_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Returns a cell-index → HeatmapValue map for the given field and selected
/// plant. Computed locally from catalog relationship data — no network call.
/// Returns an empty map while the catalog is loading or if no plant is selected.

@ProviderFor(heatmap)
final heatmapProvider = HeatmapFamily._();

/// Returns a cell-index → HeatmapValue map for the given field and selected
/// plant. Computed locally from catalog relationship data — no network call.
/// Returns an empty map while the catalog is loading or if no plant is selected.

final class HeatmapProvider
    extends
        $FunctionalProvider<
          Map<int, HeatmapValue>,
          Map<int, HeatmapValue>,
          Map<int, HeatmapValue>
        >
    with $Provider<Map<int, HeatmapValue>> {
  /// Returns a cell-index → HeatmapValue map for the given field and selected
  /// plant. Computed locally from catalog relationship data — no network call.
  /// Returns an empty map while the catalog is loading or if no plant is selected.
  HeatmapProvider._({
    required HeatmapFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'heatmapProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$heatmapHash();

  @override
  String toString() {
    return r'heatmapProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<Map<int, HeatmapValue>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Map<int, HeatmapValue> create(Ref ref) {
    final argument = this.argument as (String, String);
    return heatmap(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<int, HeatmapValue> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<int, HeatmapValue>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is HeatmapProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$heatmapHash() => r'158d5afde8d149f5e49967d0094dd76f9275363e';

/// Returns a cell-index → HeatmapValue map for the given field and selected
/// plant. Computed locally from catalog relationship data — no network call.
/// Returns an empty map while the catalog is loading or if no plant is selected.

final class HeatmapFamily extends $Family
    with $FunctionalFamilyOverride<Map<int, HeatmapValue>, (String, String)> {
  HeatmapFamily._()
    : super(
        retry: null,
        name: r'heatmapProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Returns a cell-index → HeatmapValue map for the given field and selected
  /// plant. Computed locally from catalog relationship data — no network call.
  /// Returns an empty map while the catalog is loading or if no plant is selected.

  HeatmapProvider call(String fieldId, String activePlantId) =>
      HeatmapProvider._(argument: (fieldId, activePlantId), from: this);

  @override
  String toString() => r'heatmapProvider';
}
