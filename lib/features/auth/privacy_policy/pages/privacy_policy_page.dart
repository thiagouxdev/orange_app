import 'package:flutter/material.dart';
import 'package:orange_app/utils/theme/widgets/sliver_app_bar_theme.dart';

import '../../../../utils/constants/text_strings.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          TSliverAppBarTheme(title: TTexts.privacyPolicy),
        ],
      ),
    );
  }
}
