import 'package:flutter/material.dart';
import 'package:saqal_website/src/constants/colors.dart';

class ProfileImageWithName extends StatelessWidget {
  final String? imagePath;
  final String? name;
  final String? subTitle;
  final bool whiteText;

  const ProfileImageWithName(
      {super.key,
      this.imagePath,
      required this.name,
      this.subTitle,
      this.whiteText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            foregroundImage:
                AssetImage(imagePath ?? 'assets/graphics/profile.png'),
          ),
          const SizedBox(height: 8),
          if (name != null) ...[
            Text(
              name!,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: whiteText ? Colors.white : AppColors.pimary),
            ),
            const SizedBox(height: 4)
          ],
          if (subTitle != null)
            Text(
              subTitle!,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: whiteText ? Colors.white : AppColors.pimary,
                  fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}
