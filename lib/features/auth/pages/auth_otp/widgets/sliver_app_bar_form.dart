import 'package:flutter/material.dart';
import 'package:orange_app/utils/constants/sizes.dart';

import '../../../../../utils/theme/widgets/text_theme.dart';

class TSliverAppBarForm extends StatelessWidget {
  final String heading;
  final String subHeading;

  const TSliverAppBarForm({
    super.key,
    required this.heading,
    required this.subHeading,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.gapSmall),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TText.headlineMedium(heading, textAlign: TextAlign.start),
            const SizedBox(
              height: TSizes.gapSmall,
            ),
            TText.bodyLarge(subHeading),
          ],
        ),
      ),
    );
  }
}
