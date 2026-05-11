import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../shared/models/field.dart';

part 'fields_provider.g.dart';

@riverpod
Future<List<Field>> fields(Ref ref) async {
  // TODO: fetch from Supabase
  return [];
}
