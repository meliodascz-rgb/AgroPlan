// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(catalog)
final catalogProvider = CatalogProvider._();

final class CatalogProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Plant>>,
          List<Plant>,
          FutureOr<List<Plant>>
        >
    with $FutureModifier<List<Plant>>, $FutureProvider<List<Plant>> {
  CatalogProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogHash();

  @$internal
  @override
  $FutureProviderElement<List<Plant>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Plant>> create(Ref ref) {
    return catalog(ref);
  }
}

String _$catalogHash() => r'70e8bbc400e9852038d9118839e86bc61e13a9b7';

@ProviderFor(CatalogFilter)
final catalogFilterProvider = CatalogFilterProvider._();

final class CatalogFilterProvider
    extends $NotifierProvider<CatalogFilter, String> {
  CatalogFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogFilterHash();

  @$internal
  @override
  CatalogFilter create() => CatalogFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$catalogFilterHash() => r'c92687fae008fad629150ed90999656f183acb92';

abstract class _$CatalogFilter extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(filteredCatalog)
final filteredCatalogProvider = FilteredCatalogProvider._();

final class FilteredCatalogProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Plant>>,
          List<Plant>,
          FutureOr<List<Plant>>
        >
    with $FutureModifier<List<Plant>>, $FutureProvider<List<Plant>> {
  FilteredCatalogProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filteredCatalogProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filteredCatalogHash();

  @$internal
  @override
  $FutureProviderElement<List<Plant>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Plant>> create(Ref ref) {
    return filteredCatalog(ref);
  }
}

String _$filteredCatalogHash() => r'6873cde1c3867ca4f39f1862ccb1113be7974c39';
