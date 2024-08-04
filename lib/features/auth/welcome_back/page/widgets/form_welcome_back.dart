import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import 'package:orange_app/utils/constants/text_strings.dart';
import 'package:orange_app/utils/theme/widgets/filled_button_larger_theme.dart';
import 'package:orange_app/utils/theme/widgets/text_theme.dart';
import '../../../../../utils/theme/widgets/outlined_button_larger_theme.dart';

class FormWelcomeBack extends StatefulWidget {
  const FormWelcomeBack({super.key});

  @override
  State<FormWelcomeBack> createState() => _FormWelcomeBackState();
}

class _FormWelcomeBackState extends State<FormWelcomeBack> {
  bool _isChecked = true;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.gapMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Email
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail_outline),
              border: OutlineInputBorder(),
              labelText: TTexts.eMail,
            ),
          ),
          const Gap(TSizes.gapMedium),

          // Password
          TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.key_outlined),
              suffixIcon: IconButton(
                icon: Icon(_obscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
              border: const OutlineInputBorder(),
              labelText: TTexts.password,
            ),
          ),

          // Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remember Me
              Padding(
                padding: const EdgeInsets.symmetric(vertical: TSizes.gapSmall),
                child: Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      },
                    ),
                    TText.bodyMedium(TTexts.rememberMe),
                  ],
                ),
              ),

              // Forget Password
              TextButton(
                onPressed: () {},
                child: const Text(TTexts.forgetPassword),
              ),
            ],
          ),
          const Gap(TSizes.gapMedium),

          // Sign In
          TFilledButtonLargerTheme(label: TTexts.signIn, onPressed: () {}),
          const Gap(TSizes.gapMedium),

          // Create account
          TOutlinedButtonLargerTheme(
              label: TTexts.createAccount, onPressed: () {}),
        ],
      ),
    );
  }
}
