// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heatmap_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(heatmap)
final heatmapProvider = HeatmapFamily._();

final class HeatmapProvider
    extends
        $FunctionalProvider<
          Map<int, HeatmapValue>,
          Map<int, HeatmapValue>,
          Map<int, HeatmapValue>
        >
    with $Provider<Map<int, HeatmapValue>> {
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

String _$heatmapHash() => r'd68952c509ec4dbc11f898a6acef08bdc8457e4a';

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

  HeatmapProvider call(String fieldId, String activePlantId) =>
      HeatmapProvider._(argument: (fieldId, activePlantId), from: this);

  @override
  String toString() => r'heatmapProvider';
}
