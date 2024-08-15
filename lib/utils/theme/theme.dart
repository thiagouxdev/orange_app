import 'package:flutter/material.dart';
import '../constants/color.dart';
import 'widgets/badge_theme.dart';
import 'widgets/divider_theme.dart';
import 'widgets/list_tile_theme.dart';
import 'text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme(BuildContext context) {
    final textTheme = TTextTheme.textTheme;
    const colorScheme = TColorScheme.lightColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: TTextTheme.textTheme,
      dividerTheme: TDividerTheme.theme(),
      listTileTheme: TListTileTheme.listTileTheme(textTheme, colorScheme),
      badgeTheme: TBadgeTheme.badgeTheme(colorScheme),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final textTheme = TTextTheme.textTheme;
    const colorScheme = TColorScheme.darkColorScheme;
    return ThemeData(
      colorScheme: TColorScheme.darkColorScheme,
      textTheme: TTextTheme.textTheme,
      dividerTheme: TDividerTheme.theme(),
      listTileTheme: TListTileTheme.listTileTheme(textTheme, colorScheme),
      badgeTheme: TBadgeTheme.badgeTheme(colorScheme),
    );
  }
}
