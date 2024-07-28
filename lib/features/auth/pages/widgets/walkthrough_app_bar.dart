import 'package:flutter/material.dart';
import 'package:orange_app/utils/constants/image_strings.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class WalkthroughAppBar extends StatelessWidget {
  const WalkthroughAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: TDeviceUtils.getAppBarHeight() + TSizes.extraLarge,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.medium),
            child: Image.asset(
              TImages.getLogo(context),
            ),
          ),
        ],
      ),
    );
  }
}
