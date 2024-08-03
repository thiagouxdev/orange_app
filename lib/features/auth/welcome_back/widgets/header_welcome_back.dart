import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        const Gap(TSizes.gapMedium),
        TText.headlineMedium(
          TTexts.welcomeBackHeading,
        ),
        const Gap(TSizes.gapSmall),
        TText.bodyLarge(TTexts.welcomeBackSubHeading),
      ],
    );
  }
}
