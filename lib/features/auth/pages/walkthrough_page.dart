import 'package:flutter/material.dart';
import 'package:orange_app/features/auth/controllers/walkthrough_controller.dart';
import 'package:orange_app/utils/theme/widgets/text_theme.dart';

import '../../../utils/constants/sizes.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});

  @override
  State<WalkthroughPage> createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  late final WalkthroughController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WalkthroughController(); // Inicialize o controller
  }

  @override
  Widget build(BuildContext context) {
    final items =
        _controller.getItems(context); // Obtenha os itens do controller
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
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Column(
            children: [
              Image.asset(
                item.image,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: TSizes.large, vertical: TSizes.extraLarge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TText.headlineMedium(item.heading),
                    const SizedBox(
                      height: TSizes.medium,
                    ),
                    TText.bodyMedium(item.subHeading),
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
