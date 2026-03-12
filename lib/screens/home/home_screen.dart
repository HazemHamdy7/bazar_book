import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

/// Placeholder home screen - shown after onboarding
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.menu_book_rounded, size: 64, color: AppColors.primary.withValues(alpha: 0.6)),
              const SizedBox(height: 24),
              Text(
                'Bazar.',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Welcome to your reading adventure',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.bodyText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
