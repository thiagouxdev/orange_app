import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/constants/sizes.dart';
import '../../models/walkthrough_models.dart';

class WalkthroughSmoothPageIndicator extends StatelessWidget {
  const WalkthroughSmoothPageIndicator({
    super.key,
    required PageController pageController,
    required this.items,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<WalkthroughModels> items;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageController,
      count: items.length,
      effect: ExpandingDotsEffect(
        dotHeight: TSizes.small,
        dotWidth: TSizes.small,
        expansionFactor: 3,
        activeDotColor: Theme.of(context).colorScheme.primary,
        dotColor: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }
}
