import 'package:flutter/material.dart';

class TracksPage extends StatelessWidget {
  const TracksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'المسارات المتاحة',
          style: Theme.of(context).textTheme.headline3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // List of tracks
          children: [
            TrackCard(trackName: 'برمجة واجهات المواقع', tracks: [
              Image.asset('assets/graphics/ios-logo.png', height: 50),
              Image.asset('assets/graphics/android-logo.png', height: 50),
              const FlutterLogo(size: 50),
            ]),
            TrackCard(trackName: 'برمجة تطبيقات الجوال', tracks: [
              Image.asset('assets/graphics/angular-logo.png', height: 50),
              Image.asset('assets/graphics/react-logo.png', height: 50),
            ]),
          ],
        ),
      ],
    );
  }
}

class TrackCard extends StatelessWidget {
  const TrackCard({super.key, required this.trackName, required this.tracks});

  final String trackName;
  final List<Widget> tracks;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(trackName, style: Theme.of(context).textTheme.headline5),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: tracks,
            )
          ],
        ),
      ),
    );
  }
}
