import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orange_app/routes/app_page.dart';
import 'package:orange_app/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Orange App',
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme(context),
      darkTheme: TAppTheme.darkTheme(context),
      getPages: AppPages.page,
    );
  }
}
