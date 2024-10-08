import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  //fontFamily
  static const String tFontFamily = 'Inter';

  //weight
  static const FontWeight weightRegular = FontWeight.w400;
  static const FontWeight weightMedium = FontWeight.w500;
  static const FontWeight weightSemiBold = FontWeight.w600;
  static const FontWeight weightBold = FontWeight.w700;

  static final TextTheme textTheme = TextTheme(
    //headline
    headlineLarge: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 32,
      fontWeight: weightBold,
    ),
    headlineMedium: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 28,
      fontWeight: weightBold,
    ),
    headlineSmall: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 24,
      fontWeight: weightBold,
    ),

    //title
    titleLarge: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 20,
      fontWeight: weightBold,
    ),
    titleMedium: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 16,
      fontWeight: weightBold,
      letterSpacing: 0.15,
    ),
    titleSmall: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 14,
      fontWeight: weightSemiBold,
      letterSpacing: 0.1,
    ),

    //label
    labelLarge: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 14,
      fontWeight: weightMedium,
      letterSpacing: 0.1,
    ),
    labelMedium: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 12,
      fontWeight: weightMedium,
      letterSpacing: 0.5,
    ),
    labelSmall: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 11,
      fontWeight: weightMedium,
      letterSpacing: 0.5,
    ),

    //body
    bodyLarge: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 16,
      fontWeight: weightRegular,
      letterSpacing: 0.5,
    ),
    bodyMedium: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 14,
      fontWeight: weightRegular,
      letterSpacing: 0.25,
    ),
    bodySmall: GoogleFonts.getFont(
      tFontFamily,
      fontSize: 12,
      fontWeight: weightRegular,
      letterSpacing: 0.4,
    ),
  );
}
