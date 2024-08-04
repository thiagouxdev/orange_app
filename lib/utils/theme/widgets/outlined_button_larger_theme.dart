import 'package:flutter/material.dart';
import 'package:orange_app/utils/constants/sizes.dart';

class TOutlinedButtonLargerTheme extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Widget?
      icon; // Adicionando o parâmetro de ícone como um widget opcional

  const TOutlinedButtonLargerTheme({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon, // Inicializando o ícone como opcional
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
