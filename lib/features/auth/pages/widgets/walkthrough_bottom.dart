import 'package:flutter/material.dart';

import '../../../../utils/theme/widgets/filled_button_larger_theme.dart';

class WalkthroughBottom extends StatelessWidget {
  const WalkthroughBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(
          thickness: 0.5,
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TFilledButtonLargerTheme(
                label: "Continuar",
                onPressed: () {},
              ),
              const SizedBox(height: 8.0),
              TextButton(
                onPressed: () {},
                child: const Text("Test"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
