import 'package:get/get.dart';
import '../features/home/pages/home_view.dart';

class AppPage {
  static final page = [
    GetPage(name: "/", page: () => const HomePage()),
  ];
}
