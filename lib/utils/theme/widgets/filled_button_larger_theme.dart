import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class TFilledButtonLargerTheme extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Widget? icon;

  const TFilledButtonLargerTheme({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(
            const Size(double.infinity, TSizes.buttonLargeHeight)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: TSizes.gapSmall),
          ],
          Text(label),
        ],
      ),
    );
  }
}
