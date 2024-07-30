import 'package:get/get.dart';
import 'package:orange_app/features/auth/walkthrough/pages/walkthrough_page.dart';
import 'package:orange_app/features/auth/welcome/welcome_page.dart';

class AppPages {
  static final page = [
    GetPage(name: "/", page: () => const WelcomePage()),
    GetPage(name: "/auth", page: () => const WalkthroughPage()),
    GetPage(name: "/welcome", page: () => const WelcomePage()),
  ];
}
