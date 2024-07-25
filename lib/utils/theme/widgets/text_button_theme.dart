import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class TTextButtonTheme {
  static TextButtonThemeData get theme {
    return TextButtonThemeData(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.borderRadiusMedium),
          ),
        ),
      ),
    );
  }
}
