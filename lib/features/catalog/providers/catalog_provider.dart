import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../shared/models/plant.dart';

part 'catalog_provider.g.dart';

@riverpod
Future<List<Plant>> catalog(Ref ref) async {
  // TODO: fetch from Supabase / local Drift cache
  return [];
}

@riverpod
class CatalogFilter extends _$CatalogFilter {
  @override
  String build() => 'Vše';

  void select(String filter) => state = filter;
}

@riverpod
Future<List<Plant>> filteredCatalog(Ref ref) async {
  final all = await ref.watch(catalogProvider.future);
  final filter = ref.watch(catalogFilterProvider);
  if (filter == 'Vše') return all;
  return all.where((Plant p) => p.tags.contains(filter)).toList();
}
