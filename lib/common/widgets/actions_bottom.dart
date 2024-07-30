import 'package:flutter/material.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import '../../utils/theme/widgets/filled_button_larger_theme.dart';

class ActionsBottom extends StatelessWidget {
  final String? label;
  final VoidCallback onPressed;

  const ActionsBottom({
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
              top: TSizes.medium,
              right: TSizes.medium,
              bottom: TSizes.extraLarge,
              left: TSizes.medium),
          child: Column(
            children: [
              TFilledButtonLargerTheme(
                label: label ?? "Continuar",
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ],
    );
  }
}