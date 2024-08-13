import 'package:flutter/material.dart';
import 'package:orange_app/common/widgets/action_bottom.dart';
import 'package:orange_app/features/auth/pages/auth_otp/widgets/sliver_app_bar_form.dart';
import 'package:orange_app/utils/constants/text_strings.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          TSliverAppBarForm(
            heading: TTexts.otpHeading,
            subHeading: TTexts.otpSubHeading,
          )
        ],
      ),
      bottomSheet: ActionBottom(
        label: TTexts.confirmCode,
      ),
    );
  }
}
