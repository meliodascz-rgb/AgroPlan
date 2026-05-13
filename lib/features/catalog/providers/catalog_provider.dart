import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../shared/models/plant.dart';

part 'catalog_provider.g.dart';

@riverpod
Future<List<Plant>> catalog(Ref ref) async {
  final client = Supabase.instance.client;

  final speciesData = await client.from('species').select();
  final relData = await client
      .from('relationships')
      .select('species_a_id, species_b_id, weight');

  // Build neighbor ID maps from relationship rows.
  // Both directions are valid: if A is good for B, B is good for A.
  final goodNeighbors = <String, List<String>>{};
  final badNeighbors  = <String, List<String>>{};

  for (final r in relData) {
    final aId   = r['species_a_id'] as String;
    final bId   = r['species_b_id'] as String;
    final weight = r['weight'] as int;

    if (weight >= 3) {
      (goodNeighbors[aId] ??= []).add(bId);
      (goodNeighbors[bId] ??= []).add(aId);
    } else if (weight <= -3) {
      (badNeighbors[aId] ??= []).add(bId);
      (badNeighbors[bId] ??= []).add(aId);
    }
  }

  return speciesData.map((json) {
    final id = json['id'] as String;
    return Plant.fromJson({
      ...json,
      'good_neighbor_ids': goodNeighbors[id] ?? <String>[],
      'bad_neighbor_ids':  badNeighbors[id]  ?? <String>[],
    });
  }).toList();
}

@riverpod
class CatalogFilter extends _$CatalogFilter {
  @override
  String build() => 'Vše';

  void select(String filter) => state = filter;
}

@riverpod
Future<List<Plant>> filteredCatalog(Ref ref) async {
  final all    = await ref.watch(catalogProvider.future);
  final filter = ref.watch(catalogFilterProvider);
  if (filter == 'Vše') return all;
  return all.where((Plant p) => p.tags.contains(filter)).toList();
}
