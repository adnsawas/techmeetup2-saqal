import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saqal_website/src/features/landing/page_section.dart';

class TracksSection extends StatelessWidget {
  const TracksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return PageSection(
        title: 'المسارات',
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TracksCard(trackName: 'برمجة مواقع الويب', children: [
              Image.asset('assets/graphics/angular-logo.png', height: 80),
              Image.asset('assets/graphics/react-logo.png', height: 80),
            ]),
            const SizedBox(width: 12),
            GestureDetector(
              onTap: () => context.goNamed('challenges'),
              child: TracksCard(trackName: 'برمجة تطبيقات الجوال', children: [
                Image.asset('assets/graphics/ios-logo.png', height: 80),
                Image.asset('assets/graphics/android-logo.png', height: 80),
                const FlutterLogo(size: 80),
              ]),
            ),
          ],
        ));
  }
}

class TracksCard extends StatelessWidget {
  const TracksCard(
      {super.key, required this.trackName, required this.children});

  final String trackName;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 200,
          minWidth: 400,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                trackName,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: children
                    .map<Widget>((item) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: item,
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
