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
    extends $AsyncNotifierProvider<EditorNotifier, EditorState> {
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

  @override
  bool operator ==(Object other) {
    return other is EditorNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editorNotifierHash() => r'ded9726e7d94b6a75c22ea471dc198373dcf2726';

final class EditorNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          EditorNotifier,
          AsyncValue<EditorState>,
          EditorState,
          FutureOr<EditorState>,
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

abstract class _$EditorNotifier extends $AsyncNotifier<EditorState> {
  late final _$args = ref.$arg as String;
  String get fieldId => _$args;

  FutureOr<EditorState> build(String fieldId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<EditorState>, EditorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<EditorState>, EditorState>,
              AsyncValue<EditorState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
