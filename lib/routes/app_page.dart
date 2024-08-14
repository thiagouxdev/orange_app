import 'package:get/get.dart';
import 'package:orange_app/features/auth/pages/auth_otp/number_account_page.dart';
import 'package:orange_app/features/auth/pages/auth_otp/otp_page.dart';
import '../features/auth/pages/walkthrough/walkthrough_page.dart';
import '../features/auth/pages/welcome/welcome_page.dart';
import '../features/auth/pages/privacy_policy/privacy_policy_page.dart';
import '../features/auth/pages/service_terms/service_terms_page.dart';

class AppPages {
  static final page = [
    GetPage(name: "/", page: () => const WalkthroughPage()),
    GetPage(name: "/auth", page: () => const WalkthroughPage()),
    GetPage(name: "/welcome", page: () => const WelcomePage()),
    GetPage(name: "/privacy_policy", page: () => const PrivacyPolicyPage()),
    GetPage(name: "/service_terms", page: () => const ServiceTermsPage()),
    GetPage(name: "/number_account", page: () => NumberAccountPage()),
    GetPage(name: "/otp_code", page: () => OtpPage()),
    GetPage(name: "/navigation_menu", page: () => OtpPage()),
  ];
}
