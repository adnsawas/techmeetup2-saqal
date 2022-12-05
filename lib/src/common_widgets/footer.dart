import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 1),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 48),
            child: Row(
              children: [
                // TODO: our logo instead of Saqal text
                Text(
                  'صقل',
                  style: Theme.of(context).textTheme.headline3!,
                ),
                const Spacer(),
                const Icon(Icons.telegram, size: 40),
                const Icon(Icons.mail, size: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
