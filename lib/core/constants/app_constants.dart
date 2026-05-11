abstract final class AppConstants {
  // Grid cell size options in centimetres (shown in FieldSettingsModal)
  static const cellSizeOptions = [20, 30, 50, 100];
  static const defaultCellSizeCm = 30;

  // Default new field dimensions
  static const defaultFieldCols = 5;
  static const defaultFieldRows = 7;

  // Seasons per year
  static const seasons = ['Jaro', 'Podzim'];

  // How many past years the rotation history shows
  static const historyYearsShown = 3;

  // Relationship weight threshold for heatmap coloring
  static const goodThreshold = 3;
  static const badThreshold = -3;
}
