import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key, this.textTitle, this.title, required this.content});

  final String? textTitle;
  final Widget? title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 250,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              textTitle != null
                  ? Text(
                      textTitle!,
                      style: Theme.of(context).textTheme.headline6,
                    )
                  : title!,
              const SizedBox(height: 8),
              const Divider(height: 1),
              const SizedBox(height: 8),
              content
            ],
          ),
        ),
      ),
    );
  }
}
