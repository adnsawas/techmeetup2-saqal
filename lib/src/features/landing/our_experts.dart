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
              imagePath: 'assets/images/expert1.png',
              whiteText: true,
            ),
          ),
          GestureDetector(
            onTap: () => context.goNamed('expert'),
            child: const ProfileImageWithName(
              name: 'عبد الكريم المالكي',
              subTitle: 'خبير Angular',
              imagePath: 'assets/images/expert2.png',
              whiteText: true,
            ),
          ),
          GestureDetector(
            onTap: () => context.goNamed('expert'),
            child: const ProfileImageWithName(
              name: 'حسن إبراهيم',
              subTitle: 'خبير .NET',
              imagePath: 'assets/images/expert3.png',
              whiteText: true,
            ),
          ),
        ],
      ),
    );
  }
}
