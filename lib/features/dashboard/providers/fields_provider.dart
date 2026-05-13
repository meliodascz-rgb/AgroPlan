import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/repositories/field_repository.dart';
import '../../../features/auth/providers/auth_provider.dart';
import '../../../shared/models/field.dart';

part 'fields_provider.g.dart';

/// Network-first with Drift cache.
/// On success: syncs Supabase → Drift, then returns Drift rows.
/// On network error: returns whatever Drift has cached (offline support).
@riverpod
Future<List<Field>> fields(Ref ref) async {
  final user = ref.watch(currentUserProvider);
  if (user == null) return [];

  final repo = ref.watch(fieldRepositoryProvider);

  try {
    await repo.hydrateFields(user.id);
  } catch (_) {
    // Offline — fall through to cached data
  }

  return repo.getFields(user.id);
}
