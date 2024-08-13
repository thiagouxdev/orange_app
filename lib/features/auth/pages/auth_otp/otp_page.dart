import 'package:flutter/material.dart';
import 'package:orange_app/common/widgets/action_bottom.dart';
import 'package:orange_app/features/auth/pages/auth_otp/widgets/sliver_app_bar_form.dart';
import 'package:orange_app/utils/constants/text_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/pinput.dart';

class OtpPage extends StatelessWidget {
  OtpPage({super.key});
  final TextEditingController _otpCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const TSliverAppBarForm(
            heading: TTexts.otpHeading,
            subHeading: TTexts.otpSubHeading,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(TSizes.marginMedium),
            sliver: SliverToBoxAdapter(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                TPinput(otpCode: _otpCode),
                Padding(
                  padding: const EdgeInsets.only(top: TSizes.gapMedium),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(TTexts.resendCode),
                      ),
                    ),
                  ),
                ),
              ],
            )),
          )
        ],
      ),
      bottomSheet: const ActionBottom(
        label: TTexts.confirmCode,
      ),
    );
  }
}
