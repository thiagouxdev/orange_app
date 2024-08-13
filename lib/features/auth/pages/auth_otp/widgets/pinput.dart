import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../../utils/constants/sizes.dart';

class TPinput extends StatelessWidget {
  const TPinput({
    super.key,
    required TextEditingController otpCode,
  }) : _otpCode = otpCode;

  final TextEditingController _otpCode;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: _otpCode,
      autofocus: true,
      length: 6,
      defaultPinTheme: PinTheme(
        height: 64,
        textStyle: Theme.of(context).textTheme.headlineSmall,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.cornerRadiusSmall),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
      ),
      focusedPinTheme: PinTheme(
        height: 64,
        textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.cornerRadiusSmall),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 1,
          ),
        ),
      ),
    );
  }
}
