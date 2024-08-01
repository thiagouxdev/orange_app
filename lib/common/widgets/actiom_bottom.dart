import 'package:flutter/material.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';
import '../../utils/theme/widgets/filled_button_larger_theme.dart';

class ActiomBottom extends StatelessWidget {
  final String? label;
  final VoidCallback onPressed;

  const ActiomBottom({
    super.key,
    this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(
          thickness: 0.5,
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: TSizes.marginSmall,
              right: TSizes.marginSmall,
              bottom: TSizes.marginMedium,
              left: TSizes.marginSmall),
          child: Column(
            children: [
              TFilledButtonLargerTheme(
                label: label ?? TTexts.continueText,
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
