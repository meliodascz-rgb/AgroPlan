import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/router/app_router.dart';
import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../widgets/social_login_buttons.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _email    = TextEditingController();
  final _password = TextEditingController();
  bool _loading   = false;
  String? _error;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    setState(() { _loading = true; _error = null; });
    try {
      await Supabase.instance.client.auth.signInWithPassword(
        email:    _email.text.trim(),
        password: _password.text,
      );
      if (mounted) context.go(AppRoutes.dashboard);
    } on AuthException catch (e) {
      setState(() => _error = e.message);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Scaffold(
      backgroundColor: c.paper,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(28, 40, 28, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48, height: 48,
                decoration: BoxDecoration(
                  color: c.forest,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(Icons.eco_rounded, color: c.paper, size: 26),
              ),
              const SizedBox(height: 26),
              Text(AppStrings.loginTitle, style: AppTypography.serif(38)),
              const SizedBox(height: 10),
              Text(
                AppStrings.loginSubtitle,
                style: AppTypography.body(14).copyWith(color: c.muted),
              ),
              const SizedBox(height: 32),

              _FieldLabel(label: AppStrings.email, color: c.ink),
              const SizedBox(height: 6),
              _InputField(
                controller: _email,
                hint: AppStrings.emailHint,
                keyboardType: TextInputType.emailAddress,
                cardColor: c.card,
                lineColor: c.line,
                mutedColor: c.muted,
                inkColor: c.ink,
              ),
              const SizedBox(height: 14),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _FieldLabel(label: AppStrings.password, color: c.ink),
                  Text(AppStrings.forgotPassword,
                      style: AppTypography.mono(10, color: c.forest)),
                ],
              ),
              const SizedBox(height: 6),
              _InputField(
                controller: _password,
                hint: AppStrings.passwordHint,
                obscure: true,
                cardColor: c.card,
                lineColor: c.line,
                mutedColor: c.muted,
                inkColor: c.ink,
              ),

              if (_error != null) ...[
                const SizedBox(height: 12),
                Text(_error!,
                    style: AppTypography.body(13).copyWith(color: c.clay)),
              ],

              const SizedBox(height: 18),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: FilledButton(
                  onPressed: _loading ? null : _signIn,
                  style: FilledButton.styleFrom(
                    backgroundColor: c.forest,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: _loading
                      ? SizedBox(
                          width: 20, height: 20,
                          child: CircularProgressIndicator(
                              strokeWidth: 2, color: c.paper))
                      : Text(AppStrings.signIn,
                            style: AppTypography.body(16, weight: FontWeight.w500)
                                .copyWith(color: c.paper)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 26),
                child: Row(
                  children: [
                    Expanded(child: Divider(color: c.line)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(AppStrings.or, style: AppTypography.mono(10, color: c.muted)),
                    ),
                    Expanded(child: Divider(color: c.line)),
                  ],
                ),
              ),

              const SocialLoginButtons(),

              const SizedBox(height: 24),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                      style: AppTypography.body(14).copyWith(color: c.muted),
                      children: [
                        const TextSpan(text: AppStrings.noAccount),
                        TextSpan(
                          text: AppStrings.createAccount,
                          style: AppTypography.body(14, weight: FontWeight.w500)
                              .copyWith(color: c.forest),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel({required this.label, required this.color});
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) =>
      Text(label, style: AppTypography.mono(10, color: color));
}

class _InputField extends StatelessWidget {
  const _InputField({
    required this.controller,
    required this.hint,
    required this.cardColor,
    required this.lineColor,
    required this.mutedColor,
    required this.inkColor,
    this.obscure = false,
    this.keyboardType,
  });
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final TextInputType? keyboardType;
  final Color cardColor;
  final Color lineColor;
  final Color mutedColor;
  final Color inkColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: lineColor),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        keyboardType: keyboardType,
        style: AppTypography.body(15).copyWith(color: inkColor),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppTypography.body(15).copyWith(color: mutedColor),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
}
