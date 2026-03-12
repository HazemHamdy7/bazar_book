import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class OnboardingPage {
  final String title;
  final String description;
  final Widget illustration;

  const OnboardingPage({
    required this.title,
    required this.description,
    required this.illustration,
  });
}

/// Onboarding page data matching the Figma design
List<OnboardingPage> getOnboardingPages() {
  return [
    OnboardingPage(
      title: 'Now reading books will be easier',
      description:
          'Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.',
      illustration: _OnboardingIllustration1(),
    ),
    OnboardingPage(
      title: 'Your Bookish Soulmate Awaits',
      description:
          'Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.',
      illustration: _OnboardingIllustration2(),
    ),
    OnboardingPage(
      title: 'Start Your Adventure',
      description:
          'Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let\'s go!',
      illustration: _OnboardingIllustration3(),
    ),
  ];
}

/// Screen 1: Person reading in armchair with bookshelf
class _OnboardingIllustration1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F0FA),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Image.asset('assets/images/Frame.png')),
    );
  }
}

/// Screen 2: Person at counter with instruction manual
class _OnboardingIllustration2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F0FA),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Image.asset('assets/images/Frame1.png')),
    );
  }
}

/// Screen 3: Person reading under tree
class _OnboardingIllustration3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F0FA),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Center(child: Image.asset('assets/images/Frame2.png')),
      ),
    );
  }
}
