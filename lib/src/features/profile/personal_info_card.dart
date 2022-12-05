import 'package:flutter/material.dart';
import 'package:saqal_website/src/common_widgets/card_widget.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      textTitle: 'المعلومات الشخصية',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('الايميل: ahmad.fahd@gmail.com'),
          SizedBox(height: 12),
          Text('الجوال: +9665673077310'),
        ],
      ),
    );
  }
}
