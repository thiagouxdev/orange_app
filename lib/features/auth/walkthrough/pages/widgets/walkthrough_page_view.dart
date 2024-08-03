import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_app/features/auth/walkthrough/models/walkthrough_models.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import 'package:orange_app/utils/theme/widgets/text_theme.dart';

class WalkthroughPageView extends StatelessWidget {
  const WalkthroughPageView({
    super.key,
    required this.items,
    required this.pageController,
  });

  final List<WalkthroughModels> items;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              item.image,
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.marginLarger),
              child: Column(
                children: [
                  TText.headlineMedium(
                    item.heading,
                    textAlign: TextAlign.center,
                  ),
                  const Gap(TSizes.gapMedium),
                  TText.bodyMedium(
                    item.subHeading,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
