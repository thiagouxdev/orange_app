import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_app/utils/constants/image_strings.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import 'package:orange_app/utils/constants/text_strings.dart';
import 'package:orange_app/utils/device/device_utility.dart';
import 'package:orange_app/utils/theme/widgets/text_theme.dart';
import 'widgets/button_actions.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: TSizes.marginMedium,
            ),

            // Content Welcome
            child: Column(
              children: [
                // Image
                SizedBox(
                    child: Image.asset(
                  TImages.getWelcome(context),
                  width: TDeviceUtils.getScreenWidth(context) * 1,
                )),

                // Heading and SubHeading
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.marginMedium),
                  child: Column(
                    children: [
                      TText.headlineMedium(TTexts.welcomeHeading),
                      const Gap(TSizes.gapSmall),
                      TText.bodyLarge(TTexts.welcomeSubHeading,
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // Action Bottom
      bottomSheet: const ButtonActions(),
    );
  }
}
