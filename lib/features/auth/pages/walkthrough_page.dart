import 'package:flutter/material.dart';
import 'package:orange_app/utils/constants/text_strings.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/theme/widgets/text_theme.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});

  @override
  State<WalkthroughPage> createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Image.asset(TImages.getWalkthroughImg1(context)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TText.headlineLarge(TTexts.walkthroughHeading1),
                const SizedBox(
                  height: 8,
                ),
                TText.bodyMedium(TTexts.walkthroughSubHeading1),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
