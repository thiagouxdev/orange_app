import 'package:flutter/material.dart';
import 'package:orange_app/utils/constants/sizes.dart';

class TFilledButtonTheme {
  static FilledButtonThemeData get theme {
    return FilledButtonThemeData(
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
