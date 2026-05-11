import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

enum AppIconType {
  plus,
  search,
  gear,
  back,
  sun,
  drop,
  sprout,
  bell,
  check,
  close,
  chevron,
}

class AppIcon extends StatelessWidget {
  const AppIcon(this.type, {super.key, this.size = 20, this.color});

  final AppIconType type;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      _resolveIcon(type),
      size: size,
      color: color ?? AppColors.ink,
    );
  }

  static IconData _resolveIcon(AppIconType type) => switch (type) {
        AppIconType.plus => Icons.add,
        AppIconType.search => Icons.search,
        AppIconType.gear => Icons.settings_outlined,
        AppIconType.back => Icons.arrow_back_ios_new,
        AppIconType.sun => Icons.wb_sunny_outlined,
        AppIconType.drop => Icons.water_drop_outlined,
        AppIconType.sprout => Icons.eco_outlined,
        AppIconType.bell => Icons.notifications_outlined,
        AppIconType.check => Icons.check,
        AppIconType.close => Icons.close,
        AppIconType.chevron => Icons.chevron_right,
      };
}
