import 'package:flutter/material.dart';
import 'package:orange_app/features/auth/controllers/walkthrough_controller.dart';
import '../../../utils/device/device_utility.dart';
import 'widgets/walkthrough_app_bar.dart';
import 'widgets/walkthrough_bottom.dart';
import 'widgets/walkthrough_page_view.dart';

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
    _controller = WalkthroughController();
  }

  @override
  Widget build(BuildContext context) {
    final items = _controller.getItems(context);
    return Scaffold(
      body: Stack(
        children: [
          WalkthroughPageView(
            items: items,
          ),
          Positioned(
            top: TDeviceUtils.getStatusBarHeight(),
            left: 0,
            right: 0,
            child: const WalkthroughAppBar(),
          ),
        ],
      ),
      bottomSheet: const WalkthroughBottom(),
    );
  }
}
