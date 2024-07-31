import 'package:get/get.dart';
import 'package:orange_app/features/auth/walkthrough/pages/walkthrough_page.dart';
import 'package:orange_app/features/auth/welcome/pages/welcome_page.dart';
import '../features/auth/privacy_policy/pages/privacy_policy_page.dart';
import '../features/auth/service_terms/pages/service_terms_page.dart';

class AppPages {
  static final page = [
    GetPage(name: "/", page: () => const WalkthroughPage()),
    GetPage(name: "/auth", page: () => const WalkthroughPage()),
    GetPage(name: "/welcome", page: () => const WelcomePage()),
    GetPage(name: "/privacy_policy", page: () => const PrivacyPolicyPage()),
    GetPage(name: "/service_terms", page: () => const ServiceTermsPage()),
  ];
}
