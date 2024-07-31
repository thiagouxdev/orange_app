import 'package:flutter/material.dart';

class TSliverAppBarTheme extends StatelessWidget {
  final String title;
  const TSliverAppBarTheme({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      title: Text(title),
      titleTextStyle: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
