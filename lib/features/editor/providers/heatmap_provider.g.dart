// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heatmap_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$heatmapHash() => r'd68952c509ec4dbc11f898a6acef08bdc8457e4a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [heatmap].
@ProviderFor(heatmap)
const heatmapProvider = HeatmapFamily();

/// See also [heatmap].
class HeatmapFamily extends Family<Map<int, HeatmapValue>> {
  /// See also [heatmap].
  const HeatmapFamily();

  /// See also [heatmap].
  HeatmapProvider call(
    String fieldId,
    String activePlantId,
  ) {
    return HeatmapProvider(
      fieldId,
      activePlantId,
    );
  }

  @override
  HeatmapProvider getProviderOverride(
    covariant HeatmapProvider provider,
  ) {
    return call(
      provider.fieldId,
      provider.activePlantId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'heatmapProvider';
}

/// See also [heatmap].
class HeatmapProvider extends AutoDisposeProvider<Map<int, HeatmapValue>> {
  /// See also [heatmap].
  HeatmapProvider(
    String fieldId,
    String activePlantId,
  ) : this._internal(
          (ref) => heatmap(
            ref as HeatmapRef,
            fieldId,
            activePlantId,
          ),
          from: heatmapProvider,
          name: r'heatmapProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$heatmapHash,
          dependencies: HeatmapFamily._dependencies,
          allTransitiveDependencies: HeatmapFamily._allTransitiveDependencies,
          fieldId: fieldId,
          activePlantId: activePlantId,
        );

  HeatmapProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fieldId,
    required this.activePlantId,
  }) : super.internal();

  final String fieldId;
  final String activePlantId;

  @override
  Override overrideWith(
    Map<int, HeatmapValue> Function(HeatmapRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HeatmapProvider._internal(
        (ref) => create(ref as HeatmapRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fieldId: fieldId,
        activePlantId: activePlantId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Map<int, HeatmapValue>> createElement() {
    return _HeatmapProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HeatmapProvider &&
        other.fieldId == fieldId &&
        other.activePlantId == activePlantId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fieldId.hashCode);
    hash = _SystemHash.combine(hash, activePlantId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HeatmapRef on AutoDisposeProviderRef<Map<int, HeatmapValue>> {
  /// The parameter `fieldId` of this provider.
  String get fieldId;

  /// The parameter `activePlantId` of this provider.
  String get activePlantId;
}

class _HeatmapProviderElement
    extends AutoDisposeProviderElement<Map<int, HeatmapValue>> with HeatmapRef {
  _HeatmapProviderElement(super.provider);

  @override
  String get fieldId => (origin as HeatmapProvider).fieldId;
  @override
  String get activePlantId => (origin as HeatmapProvider).activePlantId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
