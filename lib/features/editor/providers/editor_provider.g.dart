// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editorNotifierHash() => r'23d0c34a701082580e92e8b451eb018046e39c41';

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

abstract class _$EditorNotifier
    extends BuildlessAutoDisposeNotifier<EditorState> {
  late final String fieldId;

  EditorState build(
    String fieldId,
  );
}

/// See also [EditorNotifier].
@ProviderFor(EditorNotifier)
const editorNotifierProvider = EditorNotifierFamily();

/// See also [EditorNotifier].
class EditorNotifierFamily extends Family<EditorState> {
  /// See also [EditorNotifier].
  const EditorNotifierFamily();

  /// See also [EditorNotifier].
  EditorNotifierProvider call(
    String fieldId,
  ) {
    return EditorNotifierProvider(
      fieldId,
    );
  }

  @override
  EditorNotifierProvider getProviderOverride(
    covariant EditorNotifierProvider provider,
  ) {
    return call(
      provider.fieldId,
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
  String? get name => r'editorNotifierProvider';
}

/// See also [EditorNotifier].
class EditorNotifierProvider
    extends AutoDisposeNotifierProviderImpl<EditorNotifier, EditorState> {
  /// See also [EditorNotifier].
  EditorNotifierProvider(
    String fieldId,
  ) : this._internal(
          () => EditorNotifier()..fieldId = fieldId,
          from: editorNotifierProvider,
          name: r'editorNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editorNotifierHash,
          dependencies: EditorNotifierFamily._dependencies,
          allTransitiveDependencies:
              EditorNotifierFamily._allTransitiveDependencies,
          fieldId: fieldId,
        );

  EditorNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fieldId,
  }) : super.internal();

  final String fieldId;

  @override
  EditorState runNotifierBuild(
    covariant EditorNotifier notifier,
  ) {
    return notifier.build(
      fieldId,
    );
  }

  @override
  Override overrideWith(EditorNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: EditorNotifierProvider._internal(
        () => create()..fieldId = fieldId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fieldId: fieldId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<EditorNotifier, EditorState>
      createElement() {
    return _EditorNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EditorNotifierProvider && other.fieldId == fieldId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fieldId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EditorNotifierRef on AutoDisposeNotifierProviderRef<EditorState> {
  /// The parameter `fieldId` of this provider.
  String get fieldId;
}

class _EditorNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<EditorNotifier, EditorState>
    with EditorNotifierRef {
  _EditorNotifierProviderElement(super.provider);

  @override
  String get fieldId => (origin as EditorNotifierProvider).fieldId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
