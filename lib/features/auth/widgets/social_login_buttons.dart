import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../providers/auth_provider.dart';

class SocialLoginButtons extends ConsumerWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        _SocialButton(
          label: AppStrings.continueWithGoogle,
          isGoogle: true,
          onTap: () => ref.read(signInWithGoogleProvider.future),
        ),
        const SizedBox(height: 10),
        const _SocialButton(
          label: AppStrings.continueWithApple,
          isGoogle: false,
          onTap: null,
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({
    required this.label,
    required this.isGoogle,
    required this.onTap,
  });
  final String label;
  final bool isGoogle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          backgroundColor: c.card,
          side: BorderSide(color: c.line),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 18, height: 18,
              decoration: BoxDecoration(
                color: isGoogle ? Colors.white : Colors.black,
                shape: BoxShape.circle,
                border: isGoogle ? Border.all(color: c.line) : null,
              ),
            ),
            const SizedBox(width: 10),
            Text(label,
                style: AppTypography.body(15, weight: FontWeight.w500)
                    .copyWith(color: onTap != null ? c.ink : c.muted)),
          ],
        ),
      ),
    );
  }
}
