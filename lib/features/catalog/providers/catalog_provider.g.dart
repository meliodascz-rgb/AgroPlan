// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$catalogHash() => r'70e8bbc400e9852038d9118839e86bc61e13a9b7';

/// See also [catalog].
@ProviderFor(catalog)
final catalogProvider = AutoDisposeFutureProvider<List<Plant>>.internal(
  catalog,
  name: r'catalogProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$catalogHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CatalogRef = AutoDisposeFutureProviderRef<List<Plant>>;
String _$filteredCatalogHash() => r'6873cde1c3867ca4f39f1862ccb1113be7974c39';

/// See also [filteredCatalog].
@ProviderFor(filteredCatalog)
final filteredCatalogProvider = AutoDisposeFutureProvider<List<Plant>>.internal(
  filteredCatalog,
  name: r'filteredCatalogProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredCatalogHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FilteredCatalogRef = AutoDisposeFutureProviderRef<List<Plant>>;
String _$catalogFilterHash() => r'c92687fae008fad629150ed90999656f183acb92';

/// See also [CatalogFilter].
@ProviderFor(CatalogFilter)
final catalogFilterProvider =
    AutoDisposeNotifierProvider<CatalogFilter, String>.internal(
  CatalogFilter.new,
  name: r'catalogFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$catalogFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CatalogFilter = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
