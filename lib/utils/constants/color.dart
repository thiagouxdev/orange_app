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
    surfaceDim: Color(0xFFEEEEEE),
    onSurfaceVariant: Color(0xFF66564E),
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
    secondaryContainer: Color(0xFF523C2D),
    onSecondaryContainer: Color(0xFFFFF0DB),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    surface: Color(0xFF0A0A0A),
    onSurface: Color(0xFFF0ECEB),
    surfaceDim: Color(0xFF171616),
    onSurfaceVariant: Color(0xFF8F8A88),
    outline: Color(0xFF474442),
    outlineVariant: Color(0xFF52443C),
  );
}
