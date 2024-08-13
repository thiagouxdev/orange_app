import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_app/utils/constants/image_strings.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import 'package:orange_app/utils/constants/text_strings.dart';
import 'package:orange_app/utils/theme/widgets/outlined_button_larger_theme.dart';
import 'package:orange_app/utils/theme/widgets/text_theme.dart';

class FooterWelcomeBack extends StatelessWidget {
  const FooterWelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Divide
        Padding(
          padding: const EdgeInsets.all(TSizes.marginSmall),
          child: Row(
            children: [
              const Flexible(
                  child: Divider(
                endIndent: TSizes.gapMedium,
              )),
              TText.bodySmall(TTexts.orSignInWith),
              const Flexible(
                  child: Divider(
                indent: TSizes.gapMedium,
              )),
            ],
          ),
        ),
        const Gap(TSizes.gapMedium),

        // Action Social
        Column(
          children: [
            // Google
            TOutlinedButtonLargerTheme(
              label: TTexts.loginGoogle,
              onPressed: () {},
              icon: Image.asset(
                TImages.getSocialGoogle(context),
                height: TSizes.iconSmallHeight,
              ),
            ),

            const Gap(TSizes.gapMedium),

            // Apple
            TOutlinedButtonLargerTheme(
              label: TTexts.loginApple,
              onPressed: () {},
              icon: Image.asset(
                TImages.getSocialApple(context),
                height: TSizes.iconSmallHeight,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
