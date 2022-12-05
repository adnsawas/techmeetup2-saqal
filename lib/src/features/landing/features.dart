import 'package:flutter/material.dart';
import 'package:saqal_website/src/features/landing/page_section.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return PageSection(
      isWhite: false,
      title: 'المزايا',
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          // TODO: review wording
          // use images instead of icons
          FeatureCard(
              text: 'شارك في تحديات برمجية علمية تحاكي الواقع',
              icon: Icon(Icons.share)),
          FeatureCard(
              text: 'احصل على مراجهعة للكود من خبراء برمجيين',
              icon: Icon(Icons.code)),
          FeatureCard(
              text: 'قم بإثراء ملفك الشخصي في GitHub',
              icon: Icon(Icons.wb_incandescent_sharp)),
          FeatureCard(
              text: 'احصل على جلسات استشارية مع خبراء في المجال الذي تريده',
              icon: Icon(Icons.construction)),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.text, required this.icon});

  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            icon,
            const SizedBox(height: 12),
            Text(text),
          ],
        ),
      ),
    );
  }
}
