import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/constants/app_colors.dart';

/// Splash screen - deep purple background with Bazar logo
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.primary,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    _navigateToOnboarding();
  }

  Future<void> _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    Navigator.of(context).pushReplacementNamed('/onboarding');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Stylized plus/cross icon
              Row(
                children: [
                  Image.asset('assets/images/Vector.png'),
                  Image.asset('assets/images/Chapter.png'),
                ],
              ),
              Image.asset('assets/images/Vector2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
