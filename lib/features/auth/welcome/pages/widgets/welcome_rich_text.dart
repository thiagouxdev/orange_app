// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orange_app/routes/app_routes.dart';

class WelcomeRichText extends StatelessWidget {
  const WelcomeRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle baseStyle = Theme.of(context).textTheme.bodyLarge!;
    final TextStyle linkStyle =
        baseStyle.copyWith(color: Theme.of(context).colorScheme.primary);

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Leia nossa ",
        style: baseStyle,
        children: [
          TextSpan(
            text: "Política de Privacidade.",
            style: linkStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.toNamed(AppRoutes.privacyPolicyPage);
              },
          ),
          TextSpan(
            text: " Toque em Concordar e continuar para aceitar os ",
            style: baseStyle,
          ),
          TextSpan(
            text: "Termos de Serviço.",
            style: linkStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.toNamed(AppRoutes.serviceTermsPage);
              },
          ),
        ],
      ),
    );
  }
}
