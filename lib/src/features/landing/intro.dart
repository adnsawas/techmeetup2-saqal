import 'package:flutter/material.dart';
import 'package:saqal_website/src/constants/colors.dart';

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
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'اصقل مهاراتك البرمجية',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: AppColors.pimary),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'شارك في تحديات برمجية واقعية واحصل على مراجعة لكودك البرمجي من خبراء تقنيين لصقل مهاراتك البرمجية',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),
            // Image
            Expanded(
                flex: 1,
                child: Image.asset(
                  'assets/graphics/pair-programming.png',
                  height: 300,
                )),
          ],
        ),
      ),
    );
  }
}
