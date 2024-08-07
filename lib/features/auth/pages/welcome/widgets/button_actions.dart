import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:orange_app/routes/app_routes.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/theme/widgets/filled_button_larger_theme.dart';
import '../../../../../utils/theme/widgets/filled_button_tonal_larger_theme.dart';
import 'welcome_rich_text.dart';

class ButtonActions extends StatelessWidget {
  const ButtonActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.marginMedium, vertical: TSizes.marginLarger),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Actions
          TFilledButtonLargerTheme(
            label: TTexts.continuePhone,
            onPressed: () {
              Get.toNamed(AppRoutes.numberAccountPage);
            },
            icon: const Icon(Icons.call),
          ),
          const Gap(TSizes.gapMedium),
          TFilledButtonTonalLargerTheme(
            label: TTexts.continueGoogle,
            onPressed: () {},
            icon: Image.asset(
              TImages.getSocialGoogle(context),
              width: TSizes.iconSmallHeight,
            ),
          ),
          const Gap(TSizes.gapMedium),
          TFilledButtonTonalLargerTheme(
            label: TTexts.continueApple,
            onPressed: () {},
            icon: Image.asset(
              TImages.getSocialApple(context),
              width: TSizes.iconSmallHeight,
            ),
          ),
          const Gap(TSizes.gapMedium),

          // Rich Text
          const WelcomeRichText()
        ],
      ),
    );
  }
}
