import 'package:flutter/material.dart';
import 'package:orange_app/features/auth/models/walkthrough_models.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import 'package:orange_app/utils/theme/widgets/text_theme.dart';

class WalkthroughPageView extends StatelessWidget {
  const WalkthroughPageView({
    super.key,
    required this.items,
  });

  final List<WalkthroughModels> items;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Column(
          children: [
            Image.asset(
              item.image,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.large, vertical: TSizes.extraLarge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TText.headlineMedium(item.heading),
                  const SizedBox(
                    height: TSizes.medium,
                  ),
                  TText.bodyMedium(item.subHeading),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
