import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:saqal_website/src/common_widgets/footer.dart';
import 'package:saqal_website/src/constants/colors.dart';

class WebsiteSkeleton extends StatelessWidget {
  const WebsiteSkeleton({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 4,
          backgroundColor: AppColors.pimary,
          centerTitle: false,
          title: GestureDetector(
              onTap: () => context.goNamed('landing'),
              child: Image.asset(
                'assets/images/app-logo-white.png',
                height: 30,
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: TextButton(
                  onPressed: () {
                    context.goNamed('profile');
                  },
                  child: const Text(
                    'مرحبا حسن',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                    child: IntrinsicHeight(child: child))),
            // footer
            const FooterSection()
          ],
        ));
  }
}
