import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/theme/widgets/text_theme.dart';

class HeaderWelcomeBack extends StatelessWidget {
  const HeaderWelcomeBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          TImages.getLogoMark(context),
        ),
        const SizedBox(
          height: TSizes.gapMedium,
        ),
        TText.headlineMedium(
          TTexts.welcomeBackHeading,
        ),
        const SizedBox(
          height: TSizes.extraSmall,
        ),
        TText.bodyLarge(TTexts.welcomeBackSubHeading),
      ],
    );
  }
}
