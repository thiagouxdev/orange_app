import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_app/utils/constants/image_strings.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import 'package:orange_app/utils/theme/widgets/outlined_button_larger_theme.dart';

class FooterWelcomeBack extends StatelessWidget {
  const FooterWelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Google
        TOutlinedButtonLargerTheme(
          label: "Entrar com o Google",
          onPressed: () {},
          icon: Image.asset(
            TImages.getSocialGoogle(context),
            height: 18,
          ),
        ),

        const Gap(TSizes.gapMedium),

        // Apple
        TOutlinedButtonLargerTheme(
          label: "Entrar com o Google",
          onPressed: () {},
          icon: Image.asset(
            TImages.getSocialApple(context),
            height: 18,
          ),
        ),
      ],
    );
  }
}
