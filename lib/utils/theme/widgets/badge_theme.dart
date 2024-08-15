import 'package:flutter/material.dart'; // Certifique-se de adicionar este pacote no pubspec.yaml

class TBadgeTheme {
  TBadgeTheme._();

  static BadgeThemeData badgeTheme(ColorScheme colorScheme) {
    return BadgeThemeData(
      backgroundColor: colorScheme.primary,
      textColor: colorScheme.onPrimary,
    );
  }
}
