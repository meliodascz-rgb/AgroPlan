import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/repositories/field_repository.dart';
import '../../../core/utils/extensions.dart';
import '../../../shared/models/placement.dart';

part 'editor_provider.g.dart';

class EditorState {
  const EditorState({
    required this.placements,
    required this.selectedPlantId,
    required this.year,
    required this.season,
  });

  final List<Placement> placements;
  final String? selectedPlantId;
  final int year;
  final Season season;

  EditorState copyWith({
    List<Placement>? placements,
    String? selectedPlantId,
    int? year,
    Season? season,
  }) => EditorState(
        placements:      placements      ?? this.placements,
        selectedPlantId: selectedPlantId ?? this.selectedPlantId,
        year:            year            ?? this.year,
        season:          season          ?? this.season,
      );
}

@riverpod
class EditorNotifier extends _$EditorNotifier {
  /// build() is async → generates AsyncNotifier; state is `AsyncValue<EditorState>`.
  /// Loads all placements for the field (all years/seasons) so season-switching
  /// is a local filter with no extra network call.
  @override
  Future<EditorState> build(String fieldId) async {
    final repo = ref.read(fieldRepositoryProvider);
    final year = DateTime.now().year;

    // Try Drift first; if empty, pull from Supabase and cache
    var placements = await repo.getPlacementsForField(fieldId);
    if (placements.isEmpty) {
      try {
        await repo.syncPlacementsFromSupabase(fieldId);
        placements = await repo.getPlacementsForField(fieldId);
      } catch (_) {
        // Stay offline — placements stays []
      }
    }

    return EditorState(
      placements:      placements,
      selectedPlantId: null,
      year:            year,
      season:          Season.spring,
    );
  }

  void selectPlant(String plantId) {
    final s = state.requireValue;
    state = AsyncData(s.copyWith(selectedPlantId: plantId));
  }

  /// Place or replace the selected plant in a cell.
  /// Tapping the same plant again removes it (toggle).
  Future<void> placePlant(int cellIndex) async {
    final s       = state.requireValue;
    final plantId = s.selectedPlantId;
    if (plantId == null) return;

    final existing = s.placements.firstOrNull(
      (Placement p) => p.cellIndex == cellIndex && p.year == s.year && p.season == s.season,
    );

    if (existing != null && existing.speciesId == plantId) {
      await removePlant(cellIndex);
      return;
    }

    final placement = Placement(
      id:        '${fieldId}_${cellIndex}_${s.year}_${s.season.name}',
      fieldId:   fieldId,
      cellIndex: cellIndex,
      speciesId: plantId,
      year:      s.year,
      season:    s.season,
    );

    // Replace any existing placement in this cell+season+year, then add new
    final updated = [
      ...s.placements.where(
        (Placement p) => !(p.cellIndex == cellIndex && p.year == s.year && p.season == s.season),
      ),
      placement,
    ];
    state = AsyncData(s.copyWith(placements: updated));

    unawaited(ref.read(fieldRepositoryProvider).addPlacement(placement));
  }

  Future<void> removePlant(int cellIndex) async {
    final s = state.requireValue;
    final updated = s.placements
        .where(
          (Placement p) => !(p.cellIndex == cellIndex && p.year == s.year && p.season == s.season),
        )
        .toList();
    state = AsyncData(s.copyWith(placements: updated));

    unawaited(
      ref.read(fieldRepositoryProvider).removePlacement(
            fieldId:   fieldId,
            cellIndex: cellIndex,
            year:      s.year,
            season:    s.season,
          ),
    );
  }

  /// Season switch is a local filter change — no network call needed
  /// because all placements are already loaded at build() time.
  void switchSeason(int year, Season season) {
    final s = state.requireValue;
    state = AsyncData(s.copyWith(year: year, season: season));
  }
}
