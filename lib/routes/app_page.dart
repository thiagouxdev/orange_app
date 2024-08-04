import 'package:get/get.dart';
import '../features/auth/pages/walkthrough/walkthrough_page.dart';
import '../features/auth/pages/welcome/welcome_page.dart';
import '../features/auth/pages/privacy_policy/privacy_policy_page.dart';
import '../features/auth/pages/service_terms/service_terms_page.dart';
import '../features/auth/welcome_back/page/welcome_back_page.dart';

class AppPages {
  static final page = [
    GetPage(name: "/", page: () => const WalkthroughPage()),
    GetPage(name: "/auth", page: () => const WalkthroughPage()),
    GetPage(name: "/welcome", page: () => const WelcomePage()),
    GetPage(name: "/welcome_back", page: () => const WelcomeBackPage()),
    GetPage(name: "/privacy_policy", page: () => const PrivacyPolicyPage()),
    GetPage(name: "/service_terms", page: () => const ServiceTermsPage()),
  ];
}
