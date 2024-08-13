import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:orange_app/features/auth/controllers/phone_controller.dart';
import 'package:orange_app/routes/app_routes.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import 'package:orange_app/utils/constants/text_strings.dart';
import '../../../../common/widgets/action_bottom.dart';
import '../../../../utils/theme/widgets/text_field_theme.dart';
import 'widgets/sliver_app_bar_form.dart';

class NumberAccountPage extends StatelessWidget {
  NumberAccountPage({super.key});

  // Instantiate the GetX controller
  final PhoneController phoneController = Get.put(PhoneController());

  // Define the mask formatter for Brazilian phone numbers
  final phoneMaskFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const TSliverAppBarForm(
            heading: TTexts.enterNumberHeading,
            subHeading: TTexts.enterNumberSubHeading,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(TSizes.marginMedium),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: phoneController.phoneNumber.value.isNotEmpty
                        ? TextEditingController(
                            text: phoneController.phoneNumber.value)
                        : null,
                    autofocus: true,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [phoneMaskFormatter],
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone_outlined),
                      border: textFieldTheme(),
                      labelText: TTexts.callNumber,
                    ),
                    onChanged: (value) => phoneController.validateInput(value),
                  ),
                  const Gap(TSizes.gapMedium),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Obx(
        () {
          return ActionBottom(
            onPressed: phoneController.isButtonEnabled.value
                ? () {
                    Get.toNamed(AppRoutes.otpPage,
                        arguments: phoneController.phoneNumber.value);
                  }
                : null,
            label: TTexts.sendCode,
          );
        },
      ),
    );
  }
}
