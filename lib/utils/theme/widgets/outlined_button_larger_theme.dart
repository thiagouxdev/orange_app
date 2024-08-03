import 'package:flutter/material.dart';

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
        minimumSize:
            WidgetStateProperty.all<Size>(const Size(double.infinity, 52)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ajusta o tamanho do Row ao conteúdo
        children: [
          if (icon != null) ...[
            icon!, // Exibe o ícone se ele for fornecido
            const SizedBox(width: 8), // Espaçamento entre ícone e texto
          ],
          Text(label), // Exibe o texto
        ],
      ),
    );
  }
}
