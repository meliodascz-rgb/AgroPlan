// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fields_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fields)
final fieldsProvider = FieldsProvider._();

final class FieldsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Field>>,
          List<Field>,
          FutureOr<List<Field>>
        >
    with $FutureModifier<List<Field>>, $FutureProvider<List<Field>> {
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

String _$fieldsHash() => r'c1a3016dae981dab914c56ffd730d3d35b33b6a8';
