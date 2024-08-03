import 'package:flutter/material.dart';

class TText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Color? color;

  const TText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(color: color) ?? TextStyle(color: color),
      textAlign: textAlign,
    );
  }

  static Widget headlineLarge(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: textAlign,
        ),
      );

  static Widget headlineMedium(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: textAlign,
        ),
      );

  static Widget headlineSmall(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: textAlign,
        ),
      );

  static Widget titleLarge(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: textAlign,
        ),
      );

  static Widget titleMedium(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: textAlign,
        ),
      );

  static Widget titleSmall(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: textAlign,
        ),
      );

  static Widget labelLarge(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: textAlign,
        ),
      );

  static Widget labelMedium(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: textAlign,
        ),
      );

  static Widget labelSmall(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: textAlign,
        ),
      );

  static Widget bodyLarge(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: textAlign,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      );

  static Widget bodyMedium(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: textAlign,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      );

  static Widget bodySmall(String text, {TextAlign? textAlign}) => Builder(
        builder: (context) => TText(
          text,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: textAlign,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      );
}
