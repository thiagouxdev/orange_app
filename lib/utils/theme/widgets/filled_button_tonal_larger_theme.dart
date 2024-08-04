import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class TFilledButtonTonalLargerTheme extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Widget? icon;

  const TFilledButtonTonalLargerTheme({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(
            const Size(double.infinity, TSizes.buttonLargeHeight)),
      ),
      label: Text(label),
      onPressed: onPressed,
      icon: icon,
    );
  }
}
