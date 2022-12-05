import 'package:flutter/material.dart';
import 'package:saqal_website/src/features/landing/features.dart';
import 'package:saqal_website/src/features/landing/intro.dart';
import 'package:saqal_website/src/features/landing/our_experts.dart';
import 'package:saqal_website/src/features/landing/tracks.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        IntroSection(),
        FeaturesSection(),
        TracksSection(),
        OurExperts(),
      ],
    );
  }
}
