// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fieldRepository)
final fieldRepositoryProvider = FieldRepositoryProvider._();

final class FieldRepositoryProvider
    extends
        $FunctionalProvider<FieldRepository, FieldRepository, FieldRepository>
    with $Provider<FieldRepository> {
  FieldRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fieldRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fieldRepositoryHash();

  @$internal
  @override
  $ProviderElement<FieldRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FieldRepository create(Ref ref) {
    return fieldRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FieldRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FieldRepository>(value),
    );
  }
}

String _$fieldRepositoryHash() => r'ee21a22a12fdd4124857a053a831e4d9996cbf11';
