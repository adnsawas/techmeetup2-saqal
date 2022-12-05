import 'package:flutter/material.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            // Intro text
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    'اصقل مهاراتك البرمجية',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'شارك في تحديات برمجية واقعية واحصل على مراجعة لكودك البرمجي من خبراء تقنيين لصقل مهاراتك البرمجية',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
            ),
            // Image
            const Expanded(flex: 1, child: Icon(Icons.code, size: 80)),
          ],
        ),
      ),
    );
  }
}
