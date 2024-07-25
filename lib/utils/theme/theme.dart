import 'package:flutter/material.dart';
import 'widgets/filled_button_theme.dart';
import '../constants/color.dart';
import 'widgets/list_tile_theme.dart';
import 'text_theme.dart';
import 'widgets/text_button_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme(BuildContext context) {
    final textTheme = TTextTheme.textTheme;
    const colorScheme = TColorScheme.lightColorScheme;
    return ThemeData(
      textTheme: TTextTheme.textTheme,
      colorScheme: colorScheme,
      listTileTheme: TListTileTheme.listTileTheme(textTheme, colorScheme),
      filledButtonTheme: TFilledButtonTheme.theme,
      textButtonTheme: TTextButtonTheme.theme,
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final textTheme = TTextTheme.textTheme;
    const colorScheme = TColorScheme.darkColorScheme;
    return ThemeData(
      textTheme: TTextTheme.textTheme,
      colorScheme: TColorScheme.darkColorScheme,
      listTileTheme: TListTileTheme.listTileTheme(textTheme, colorScheme),
      filledButtonTheme: TFilledButtonTheme.theme,
      textButtonTheme: TTextButtonTheme.theme,
    );
  }
}
