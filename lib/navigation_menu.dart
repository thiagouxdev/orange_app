import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/shop/controllers/badge_mall_controle.dart';

import 'utils/theme/widgets/bottom_nav_bar.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  // Inicialize o controller
  final BadgeMallControle _controller = Get.put(BadgeMallControle());

  @override
  Widget build(BuildContext context) {
    final indexController = Get.put(NavigationController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Menu'),
      ),
      body: Obx(
          () => indexController.screens[indexController.selectedIndex.value]),
      extendBody: true,
      bottomNavigationBar: TBottomNavBar(
          indexController: indexController, controller: _controller),
    );
  }
}

class NavigationController extends GetxController {
  final selectedIndex = 0.obs;
  // final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];
}
