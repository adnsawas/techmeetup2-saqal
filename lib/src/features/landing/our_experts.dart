import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saqal_website/src/common_widgets/profile_image_and_name.dart';
import 'package:saqal_website/src/features/landing/page_section.dart';

class OurExperts extends StatelessWidget {
  const OurExperts({super.key});

  @override
  Widget build(BuildContext context) {
    return PageSection(
      isWhite: false,
      title: 'خبراؤنا',
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => context.goNamed('expert'),
            child: const ProfileImageWithName(
              name: 'عدنان سواس',
              subTitle: 'خبير فلاتر',
              imagePath: 'assets/images/adnan-sawas.jpeg',
              whiteText: true,
            ),
          ),
          const ProfileImageWithName(
            name: 'عبد الكريم المالكي',
            subTitle: 'خبير AI',
            imagePath: 'assets/images/abdulkareem.jpeg',
            whiteText: true,
          ),
          const ProfileImageWithName(
            name: 'حسن إبراهيم',
            subTitle: 'خبير .NET',
            imagePath: 'assets/images/hassan.jpeg',
            whiteText: true,
          ),
        ],
      ),
    );
  }
}
