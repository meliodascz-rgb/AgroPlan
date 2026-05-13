// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fields_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Network-first with Drift cache.
/// On success: syncs Supabase → Drift, then returns Drift rows.
/// On network error: returns whatever Drift has cached (offline support).

@ProviderFor(fields)
final fieldsProvider = FieldsProvider._();

/// Network-first with Drift cache.
/// On success: syncs Supabase → Drift, then returns Drift rows.
/// On network error: returns whatever Drift has cached (offline support).

final class FieldsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Field>>,
          List<Field>,
          FutureOr<List<Field>>
        >
    with $FutureModifier<List<Field>>, $FutureProvider<List<Field>> {
  /// Network-first with Drift cache.
  /// On success: syncs Supabase → Drift, then returns Drift rows.
  /// On network error: returns whatever Drift has cached (offline support).
  FieldsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fieldsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fieldsHash();

  @$internal
  @override
  $FutureProviderElement<List<Field>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Field>> create(Ref ref) {
    return fields(ref);
  }
}

String _$fieldsHash() => r'b0e410bd0bd8c9c4aaf944cdb446cb9cadb66ca4';
