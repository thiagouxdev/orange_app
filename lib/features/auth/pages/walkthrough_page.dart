import 'package:flutter/material.dart';
import '../../../resources/t_resources.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});

  @override
  State<WalkthroughPage> createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Walkthrough'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                  TResources.getResourcePath(context, "walkthrough", "img-1")),
            ],
          ),
        ));
  }
}
