import 'package:flutter/material.dart';

import '../../flavor_config.dart' show FlavorConfig;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Welcome to ${FlavorConfig.appTitle}')),
    );
  }
}
