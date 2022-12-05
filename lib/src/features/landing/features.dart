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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FeatureCard(
              text:
                  'شارك في تحديات برمجية عملية تحاكي الواقع ومطلوبة في سوق العمل',
              icon: Image.asset('assets/graphics/challenges.png', height: 200)),
          FeatureCard(
              text:
                  'احصل على مراجعة تفصيلية للكود من خبراء برمجيين لتحسين أكوادك وتفادي الأخطاء',
              icon:
                  Image.asset('assets/graphics/code-review.png', height: 200)),
          FeatureCard(
              text: 'قم بإثراء ملفك الشخصي في GitHub لزيادة فرصك الوظيفية',
              icon: Image.asset('assets/graphics/enrich-github.png',
                  height: 200)),
          FeatureCard(
              text: 'احصل على جلسات استشارية مع خبراء في المجال الذي تريده',
              icon:
                  Image.asset('assets/graphics/consultation.png', height: 200)),
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
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 300,
        height: 380,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                icon,
                const SizedBox(height: 12),
                Text(
                  text,
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                  maxLines: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
