import 'package:flutter/material.dart';

class TOutlinedButtonLargerTheme extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const TOutlinedButtonLargerTheme({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        minimumSize:
            WidgetStateProperty.all<Size>(const Size(double.infinity, 52)),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
