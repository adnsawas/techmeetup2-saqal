import 'package:flutter/material.dart';
import 'package:saqal_website/src/common_widgets/card_widget.dart';

class ExpertsCard extends StatelessWidget {
  const ExpertsCard({super.key, required this.experience, required this.bio});

  final String experience;
  final String bio;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      textTitle: 'الخبرات والاستشارات',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('السيرة: $bio'),
          const SizedBox(height: 8),
          Text('الخبرات:  $experience'),
        ],
      ),
    );
  }
}
