import 'package:get/get.dart';
import 'package:orange_app/features/auth/pages/walkthrough_page.dart';
import '../features/home/pages/home_view.dart';

class AppPage {
  static final page = [
    GetPage(name: "/", page: () => const WalkthroughPage()),
    GetPage(name: "/", page: () => const HomePage()),
    GetPage(name: "/auth", page: () => const WalkthroughPage()),
  ];
}
