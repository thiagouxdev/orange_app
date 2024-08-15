import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../features/shop/controllers/badge_mall_controle.dart';
import '../../../navigation_menu.dart';
import '../../constants/sizes.dart';

class TBottomNavBar extends StatelessWidget {
  const TBottomNavBar({
    super.key,
    required this.indexController,
    required BadgeMallControle controller,
  }) : _controller = controller;

  final NavigationController indexController;
  final BadgeMallControle _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: TSizes.marginMedium),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: 272,
          child: Obx(
            () {
              return ClipRRect(
                borderRadius:
                    BorderRadius.circular(TSizes.cornerRadiusExtraLarge),
                child: Stack(
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                      child: Container(
                        height: 72,
                        decoration: BoxDecoration(
                          // color: Colors.red.withOpacity(0.3),
                          color: Theme.of(context)
                              .colorScheme
                              .surfaceDim
                              .withOpacity(0.7),
                          borderRadius: BorderRadius.circular(
                              TSizes.cornerRadiusExtraLarge),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: NavigationBar(
                        height: 72,
                        elevation: 0,
                        indicatorColor: Colors.transparent,
                        selectedIndex: indexController.selectedIndex.value,
                        onDestinationSelected: (valueClick) =>
                            indexController.selectedIndex.value = valueClick,
                        labelBehavior:
                            NavigationDestinationLabelBehavior.alwaysHide,
                        backgroundColor: Colors.transparent,
                        destinations: [
                          const NavigationDestination(
                            selectedIcon: TSelectedNavBar(
                              icon: Icons.home_filled,
                            ),
                            icon: Icon(
                              Icons.home_outlined,
                            ),
                            label: "home",
                          ),
                          const NavigationDestination(
                            selectedIcon: TSelectedNavBar(
                              icon: Icons.storefront_rounded,
                            ),
                            icon: Icon(Icons.storefront_outlined),
                            label: "store",
                          ),
                          const NavigationDestination(
                            selectedIcon: TSelectedNavBar(
                              icon: Icons.favorite_rounded,
                            ),
                            icon: Icon(Icons.favorite_outline),
                            label: "favorite",
                          ),
                          NavigationDestination(
                            selectedIcon: const TSelectedNavBar(
                              icon: Icons.local_mall_rounded,
                            ),
                            icon: Badge(
                              label: Text("${_controller.isQttMall.value}"),
                              isLabelVisible: _controller.isQttMall.value > 0,
                              child: const Icon(Icons.local_mall_outlined),
                            ),
                            label: "local mall",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class TSelectedNavBar extends StatelessWidget {
  final IconData icon;

  const TSelectedNavBar({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(TSizes.cornerRadiusMedium),
      child: Container(
        height: 52,
        width: 64,
        color: Theme.of(context).colorScheme.surface,
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
