import 'package:flutter/material.dart';
import 'package:saqal_website/src/common_widgets/profile_image_and_name.dart';
import 'package:saqal_website/src/features/profile/challenges_progress_card.dart';
import 'package:saqal_website/src/features/profile/experts_card.dart';
import 'package:saqal_website/src/features/profile/personal_info_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage(
      {super.key,
      required this.userName,
      this.userImagePath,
      this.isExpert = false});

  final String userName;
  final String? userImagePath;
  final bool isExpert;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Center(
            child: ProfileImageWithName(
              name: userName,
              imagePath: userImagePath,
            ),
          ),
          // Consultaion Button
          if (isExpert)
            ElevatedButton(
                onPressed: () =>
                    launchUrl(Uri.tryParse('https://calendly.com/adnsawas')!),
                child: const Text('اضغط هنا لحجز استشارة')),
          const SizedBox(height: 24),
          // Profile Info and Challenges Progress
          Row(
            children: [
              const Expanded(flex: 2, child: PersonalInfoCard()),
              if (!isExpert)
                const Expanded(
                  flex: 3,
                  child: ChallengesProgressCard(),
                ),
              if (isExpert)
                const Expanded(
                  flex: 3,
                  child: ExpertsCard(
                    experience: 'Flutter, Firebase',
                    bio:
                        'متخرج من جامعة الملك فهد للبترول للمعادن ولديه خبرة ٤ سنين في تطوير تطبيقات فلاتر في شركة أرامكو السعودية. قام بتطوير عدة تطبيقات ذات جودة عالية ويتم استخدامها من قبل عشرات آلاف المستخدمين',
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
