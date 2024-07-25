import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orange_app/utils/resources/t_resources.dart';
import 'package:orange_app/utils/theme/widgets/text_theme.dart';

import '../../../utils/constants/text_strings.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});

  @override
  State<WalkthroughPage> createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Column(
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
                FilledButton(
                  onPressed: () {},
                  child: const Text("Label"),
                ),
                const SizedBox(height: 8.0),
                TextButton(
                  onPressed: () {},
                  child: const Text("Label"),
                ),
              ],
            ),
          ),
        ],
      ),
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                TResources.getResourcePath(context, "walkthrough", "img-1"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TText.headlineMedium(TTexts.walkthroughHeading1),
                    const SizedBox(
                      height: 12,
                    ),
                    TText.bodyMedium(TTexts.walkthroughSubHeading1),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
