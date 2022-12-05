import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saqal_website/src/common_widgets/profile_image_and_name.dart';
import 'package:saqal_website/src/features/challenges/challenges_content.dart';
import 'package:saqal_website/src/features/landing/page_section.dart';
import 'package:url_launcher/url_launcher.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'تحديات فلاتر Flutter',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              ChallengeCard(
                  challengeTitle: 'Basic Authentication',
                  challengeLevel: ChallengeLevel.beginner,
                  challengeDescription: ChallengesContent.challenge1),
              const SizedBox(width: 12),
              ChallengeCard(
                  challengeTitle: 'Files Upload and Download',
                  challengeLevel: ChallengeLevel.medium,
                  challengeDescription: ChallengesContent.challenge2),
            ],
          ),

          const SizedBox(height: 24),
          const SizedBox(height: 24),

          // Flutter Experts
          PageSection(
            title: 'خبراء فلاتر Flutter',
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => context.goNamed('expert'),
                  child: const ProfileImageWithName(
                    name: 'عدنان سواس',
                    imagePath: 'assets/images/expert1.png',
                  ),
                ),
                const ProfileImageWithName(
                  name: 'عبد الكريم المالكي',
                  imagePath: 'assets/images/expert3.png',
                ),
                const ProfileImageWithName(
                  name: 'حسن إبراهيم',
                  imagePath: 'assets/images/expert2.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum ChallengeLevel { beginner, medium, advanced }

extension ChallengeLevelExtension on ChallengeLevel {
  String toText() {
    switch (name) {
      case 'beginner':
        return 'مبتدئ';
      case 'medium':
        return 'متوسط';
      case 'advanced':
        return 'متقدم';
      default:
        return '';
    }
  }

  Color toColor() {
    switch (name) {
      case 'beginner':
        return Colors.green;
      case 'medium':
        return Colors.amber;
      case 'advanced':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}

class ChallengeCard extends StatelessWidget {
  const ChallengeCard(
      {super.key,
      required this.challengeTitle,
      required this.challengeLevel,
      required this.challengeDescription});

  final String challengeTitle;
  final ChallengeLevel challengeLevel;
  final String challengeDescription;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 400,
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Title And level
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    challengeTitle,
                    style: Theme.of(context).textTheme.headline6,
                  )),
                  Chip(
                    label: Text(challengeLevel.toText()),
                    backgroundColor: challengeLevel.toColor(),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Divider(height: 1),
              const SizedBox(height: 8),
              // Challenge Decribtion and start challenge button
              Expanded(child: Text(challengeDescription, maxLines: 10)),
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                    onPressed: () {
                      launchUrl(Uri.tryParse(
                          'https://github.com/bepitome/flutter-basic-authentication-challenge')!);
                    },
                    child: const Text('ابدأ التحدي')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
