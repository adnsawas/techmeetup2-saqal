import 'package:flutter/material.dart';
import 'package:saqal_website/src/common_widgets/card_widget.dart';
import 'package:saqal_website/src/common_widgets/link.dart';

class ChallengesProgressCard extends StatelessWidget {
  const ChallengesProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      textTitle: 'تحدياتي',
      content: DataTable(
        columns: const [
          DataColumn(label: Text('التحدي')),
          DataColumn(label: Text('الرابط')),
          DataColumn(label: Text('اكتمل؟')),
        ],
        rows: [
          DataRow(cells: [
            const DataCell(Text('Basic Authentication')),
            const DataCell(LinkText(
              text: 'Link',
              link:
                  'https://github.com/bepitome/flutter-basic-authentication-challenge/pull/11',
            )),
            DataCell(Checkbox(
              value: true,
              fillColor: MaterialStateProperty.all(Colors.green),
              onChanged: (v) {},
            )),
          ]),
          DataRow(cells: [
            const DataCell(Text('Files Upload and Download')),
            const DataCell(LinkText(
              text: 'Link',
              link: '',
            )),
            DataCell(Checkbox(
              value: false,
              fillColor: MaterialStateProperty.all(Colors.grey),
              onChanged: (v) {},
            )),
          ]),
        ],
      ),
    );
  }
}
