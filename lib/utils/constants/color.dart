import 'package:flutter/material.dart';

class TColorScheme {
  TColorScheme._();

  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFF48F42),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFDCC7),
    secondary: Color(0xFF755846),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFDCC7),
    onSecondaryContainer: Color(0xFF2B1708),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFBFA),
    onSurface: Color(0xFF221A15),
    onSurfaceVariant: Color(0xFF52443C),
    outline: Color(0xFFD6C9C1),
    outlineVariant: Color(0xFFD7C3B7),
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFA9446),
    onPrimary: Color(0xFF0F0700),
    primaryContainer: Color(0xFF6E390E),
    secondary: Color(0xFFE5BFA8),
    onSecondary: Color(0xFF422B1B),
    secondaryContainer: Color(0xFF5B4130),
    onSecondaryContainer: Color(0xFFFFDCC7),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    surface: Color(0xFF050505),
    onSurface: Color(0xFFF0ECEB),
    onSurfaceVariant: Color(0xFFBCB6B2),
    outline: Color(0xFF474442),
    outlineVariant: Color(0xFF52443C),
  );
}
