import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_provider.g.dart';

@riverpod
Stream<AuthState> authState(Ref ref) {
  return Supabase.instance.client.auth.onAuthStateChange;
}

@riverpod
User? currentUser(Ref ref) {
  return Supabase.instance.client.auth.currentUser;
}

@riverpod
Future<void> signInWithGoogle(Ref ref) async {
  final googleUser = await GoogleSignIn(
    serverClientId: '62857319871-7ulesj4434nrlodln0qr5v8pub7ko34m.apps.googleusercontent.com',
  ).signIn();
  if (googleUser == null) return; // user cancelled

  final googleAuth = await googleUser.authentication;
  await Supabase.instance.client.auth.signInWithIdToken(
    provider: OAuthProvider.google,
    idToken: googleAuth.idToken!,
    accessToken: googleAuth.accessToken,
  );
}
