import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orange_app/common/widgets/action_bottom.dart';
import 'package:orange_app/features/auth/controllers/otp_controller.dart';
import 'package:orange_app/features/auth/pages/auth_otp/widgets/sliver_app_bar_form.dart';
import 'package:orange_app/routes/app_routes.dart';
import 'package:orange_app/utils/constants/text_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controllers/timer_controller.dart';
import 'widgets/pinput.dart';

class OtpPage extends StatelessWidget {
  OtpPage({super.key});
  final OtpController _otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    final TimerController timerController = Get.put(TimerController());
    final String phoneNumber = Get.arguments as String;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          TSliverAppBarForm(
            heading: TTexts.otpHeading,
            subHeading:
                "${TTexts.otpSubHeading} ${phoneNumber.substring(0, 2)} ***** ${phoneNumber.substring(7, 11)}",
          ),
          SliverPadding(
            padding: const EdgeInsets.all(TSizes.marginMedium),
            sliver: SliverToBoxAdapter(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                TPinput(
                  otpCode: _otpController.otpCode,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: TSizes.gapMedium),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Obx(() {
                        return OutlinedButton(
                          onPressed: timerController.isButtonEnabled.value
                              ? () {
                                  timerController.restartCountdown();
                                }
                              : null,
                          child: timerController.isButtonEnabled.value
                              ? const Text(TTexts.resendCode)
                              : Text(
                                  "${TTexts.resendCode} in ${timerController.countdown.value}s"),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            )),
          )
        ],
      ),
      bottomSheet: Obx(() {
        return ActionBottom(
          label: TTexts.confirmCode,
          onPressed: _otpController.isButtonEnabled.value
              ? () {
                  Get.offNamed(AppRoutes.navMenu);
                }
              : null,
        );
      }),
    );
  }
}
