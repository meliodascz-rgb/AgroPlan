import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_provider.g.dart';

class UserPrefs {
  const UserPrefs({
    this.climateZone = '',
    this.useMetric = true,
    this.language = 'cs',
  });

  final String climateZone;
  final bool useMetric;
  final String language;
}

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  Future<UserPrefs> build() async {
    final prefs = await SharedPreferences.getInstance();
    return UserPrefs(
      climateZone: prefs.getString('climate_zone') ?? '',
      useMetric: prefs.getBool('use_metric') ?? true,
      language: prefs.getString('language') ?? 'cs',
    );
  }
}
