// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orange_app/routes/app_routes.dart';
import 'package:orange_app/utils/constants/text_strings.dart';

class WelcomeRichText extends StatelessWidget {
  const WelcomeRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle baseStyle = Theme.of(context)
        .textTheme
        .bodyLarge!
        .copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant);
    final TextStyle linkStyle =
        baseStyle.copyWith(color: Theme.of(context).colorScheme.primary);

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "${TTexts.readOur} ",
        style: baseStyle,
        children: [
          TextSpan(
            text: TTexts.privacyPolicy,
            style: linkStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.toNamed(AppRoutes.privacyPolicyPage);
              },
          ),
          TextSpan(
            text:
                ". ${TTexts.tapOn} ${TTexts.agreeAndContinue} ${TTexts.toAcceptThe} ",
            style: baseStyle,
          ),
          TextSpan(
            text: "${TTexts.termsOfService}.",
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
