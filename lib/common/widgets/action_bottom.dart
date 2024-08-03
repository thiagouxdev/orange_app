import 'package:flutter/material.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';
import '../../utils/theme/widgets/filled_button_larger_theme.dart';

class ActionBottom extends StatelessWidget {
  final String? label;
  final VoidCallback onPressed;

  const ActionBottom({
    super.key,
    this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(
              bottom: TSizes.marginMedium,
              left: TSizes.marginMedium,
              top: TSizes.marginSmall,
              right: TSizes.marginMedium),
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
