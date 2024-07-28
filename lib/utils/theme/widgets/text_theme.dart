import 'package:flutter/material.dart';

class TText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign; // Adicione esta linha

  const TText(this.text,
      {super.key,
      this.style,
      this.textAlign}); // Adicione textAlign ao construtor

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign, // Utilize textAlign aqui
    );
  }

  static Widget headlineLarge(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget headlineMedium(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget headlineSmall(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget titleLarge(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget titleMedium(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget titleSmall(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget labelLarge(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget labelMedium(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget labelSmall(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget bodyLarge(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget bodyMedium(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );

  static Widget bodySmall(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: textAlign, // Adicione textAlign aqui
        ),
      );
}
