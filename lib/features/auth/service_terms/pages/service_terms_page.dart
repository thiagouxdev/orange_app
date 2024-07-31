import 'package:flutter/material.dart';

import '../../../../utils/theme/widgets/sliver_app_bar_theme.dart';

class ServiceTermsPage extends StatelessWidget {
  const ServiceTermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          TSliverAppBarTheme(title: "Termos de Serviço"),
        ],
      ),
    );
  }
}
