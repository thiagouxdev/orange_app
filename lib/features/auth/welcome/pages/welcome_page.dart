import 'package:flutter/material.dart';
import 'package:orange_app/common/widgets/actiom_bottom.dart';
import 'package:orange_app/utils/constants/image_strings.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import 'package:orange_app/utils/constants/text_strings.dart';
import 'package:orange_app/utils/theme/widgets/text_theme.dart';
import 'widgets/welcome_rich_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: TSizes.superExtraLarge,
            ),
            child: Column(
              children: [
                Image.asset(TImages.getWelcome(context)),
                Padding(
                  padding: const EdgeInsets.all(TSizes.marginMedium),
                  child: Column(
                    children: [
                      TText.headlineMedium(TTexts.welcomeHeading),
                      const SizedBox(
                        height: TSizes.gapMedium,
                      ),
                      const WelcomeRichText()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: ActiomBottom(
        label: TTexts.agreeAndContinue,
        onPressed: () {},
      ),
    );
  }
}
