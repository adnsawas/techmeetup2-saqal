import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saqal_website/src/constants/colors.dart';

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
                Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset('assets/images/app-logo.png',
                          height: 40)),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      Text(
                        'جميع الحقوق محفوظة لدى مؤسسة صقل ',
                        textAlign: TextAlign.center,
                      ),
                      Text('2022')
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.twitter,
                          color: AppColors.pimary,
                          size: 40,
                        ),
                        SizedBox(width: 24),
                        Icon(
                          Icons.mail,
                          size: 40,
                          color: AppColors.pimary,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
