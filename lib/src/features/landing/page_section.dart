import 'package:flutter/material.dart';
import 'package:saqal_website/src/constants/colors.dart';

class PageSection extends StatelessWidget {
  const PageSection(
      {super.key,
      this.isWhite = true,
      required this.title,
      required this.content});

  final bool isWhite;
  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isWhite ? Colors.white : AppColors.pimary,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(title,
                style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: isWhite ? AppColors.pimary : Colors.white,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            content,
          ],
        ),
      ),
    );
  }
}
