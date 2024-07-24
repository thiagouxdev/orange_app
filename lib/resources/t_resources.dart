import 'package:flutter/material.dart';

class TResources {
  static String getResourcePath(
      BuildContext context, String category, String resourceName) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final path = "assets/$category/";

    return "$path$resourceName-${isDarkMode ? 'dark' : 'light'}.png";
  }
}
