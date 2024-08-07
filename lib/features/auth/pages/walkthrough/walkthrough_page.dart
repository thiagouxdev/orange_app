import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orange_app/features/auth/controllers/walkthrough_controller.dart';
import 'package:orange_app/common/widgets/action_bottom.dart';
import 'package:orange_app/routes/app_routes.dart';
import 'package:orange_app/utils/constants/sizes.dart';
import 'widgets/walkthrough_app_bar.dart';
import 'widgets/walkthrough_page_view.dart';
import 'widgets/walkthrough_smooth_page_indicator.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});

  @override
  State<WalkthroughPage> createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  late final WalkthroughController _controller;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _controller = WalkthroughController();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = _controller.getItems(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Appbar logo
            const WalkthroughAppBar(),

            // Pageview horizontal Scrollable
            Expanded(
              child: WalkthroughPageView(
                pageController: _pageController,
                items: items,
              ),
            ),

            // Dot Navigation SmoothPageIndicator
            Padding(
              padding: const EdgeInsets.only(bottom: TSizes.marginLarger * 2),
              child: WalkthroughSmoothPageIndicator(
                  pageController: _pageController, items: items),
            ),

            // Action Bottom
            ActionBottom(
              onPressed: () {
                Get.offNamed(AppRoutes.welcomePage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
