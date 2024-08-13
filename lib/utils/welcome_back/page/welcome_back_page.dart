import 'package:flutter/material.dart';
import 'package:orange_app/utils/constants/sizes.dart';
// import 'widgets/footer_welcome_back.dart';
import 'widgets/form_welcome_back.dart';
import 'widgets/header_welcome_back.dart';

class WelcomeBackPage extends StatelessWidget {
  const WelcomeBackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: TSizes.appBarHeight,
                left: TSizes.marginMedium,
                right: TSizes.marginMedium),
            child: SafeArea(
              child: Column(
                children: [
                  HeaderWelcomeBack(),
                  FormWelcomeBack(),
                  // FooterWelcomeBack(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
