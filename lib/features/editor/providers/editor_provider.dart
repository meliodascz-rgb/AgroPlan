import 'package:riverpod_annotation/riverpod_annotation.dart';
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
        placements: placements ?? this.placements,
        selectedPlantId: selectedPlantId ?? this.selectedPlantId,
        year: year ?? this.year,
        season: season ?? this.season,
      );
}

@riverpod
class EditorNotifier extends _$EditorNotifier {
  @override
  EditorState build(String fieldId) => EditorState(
        placements: [],
        selectedPlantId: null,
        year: DateTime.now().year,
        season: Season.spring,
      );

  void selectPlant(String plantId) =>
      state = state.copyWith(selectedPlantId: plantId);

  void placePlant(int cellIndex) {
    final plantId = state.selectedPlantId;
    if (plantId == null) return;
    final placement = Placement(
      id: '${fieldId}_${cellIndex}_${state.year}_${state.season.name}',
      fieldId: fieldId,
      cellIndex: cellIndex,
      plantId: plantId,
      year: state.year,
      season: state.season,
    );
    state = state.copyWith(
      placements: [...state.placements, placement],
    );
  }

  void removePlant(int cellIndex) {
    state = state.copyWith(
      placements: state.placements
          .where((p) => p.cellIndex != cellIndex)
          .toList(),
    );
  }

  void switchSeason(int year, Season season) =>
      state = state.copyWith(year: year, season: season);
}
