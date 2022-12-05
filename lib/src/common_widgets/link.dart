import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkText extends StatelessWidget {
  const LinkText({super.key, required this.text, required this.link});

  final String text;
  final String link;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(link)),
      child: Text(
        text,
        style: const TextStyle(
            decoration: TextDecoration.underline, color: Colors.blue),
      ),
    );
  }
}
