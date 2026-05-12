// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditorNotifier)
final editorProvider = EditorNotifierFamily._();

final class EditorNotifierProvider
    extends $NotifierProvider<EditorNotifier, EditorState> {
  EditorNotifierProvider._({
    required EditorNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'editorProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editorNotifierHash();

  @override
  String toString() {
    return r'editorProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EditorNotifier create() => EditorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditorState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditorState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EditorNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editorNotifierHash() => r'23d0c34a701082580e92e8b451eb018046e39c41';

final class EditorNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          EditorNotifier,
          EditorState,
          EditorState,
          EditorState,
          String
        > {
  EditorNotifierFamily._()
    : super(
        retry: null,
        name: r'editorProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditorNotifierProvider call(String fieldId) =>
      EditorNotifierProvider._(argument: fieldId, from: this);

  @override
  String toString() => r'editorProvider';
}

abstract class _$EditorNotifier extends $Notifier<EditorState> {
  late final _$args = ref.$arg as String;
  String get fieldId => _$args;

  EditorState build(String fieldId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EditorState, EditorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditorState, EditorState>,
              EditorState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
