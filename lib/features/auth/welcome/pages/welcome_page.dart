import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:orange_app/common/widgets/action_bottom.dart';
import 'package:orange_app/routes/app_routes.dart';
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
              top: TSizes.marginLarger,
            ),

            // Content Welcome
            child: Column(
              children: [
                // Image
                Image.asset(TImages.getWelcome(context)),

                // Rich Text
                Padding(
                  padding: const EdgeInsets.all(TSizes.marginMedium),
                  child: Column(
                    children: [
                      TText.headlineMedium(TTexts.welcomeHeading),
                      const Gap(TSizes.gapMedium),
                      const WelcomeRichText()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // Action Bottom
      bottomSheet: ActionBottom(
        label: TTexts.agreeAndContinue,
        onPressed: () {
          Get.toNamed(AppRoutes.welcomeBackPage);
        },
      ),
    );
  }
}
