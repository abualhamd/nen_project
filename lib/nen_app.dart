import 'package:flutter/material.dart';

import 'flavor_config.dart' show FlavorConfig;
import 'screens/home_screen.dart';

class NenApp extends StatelessWidget {
  const NenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FlavorConfig.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      builder: (context, child) {
        return Banner(
          location: BannerLocation.topStart,
          message: FlavorConfig.flavor,
          color: Colors.green.withAlpha(150),
          textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
            letterSpacing: 1.0,
          ),
          textDirection: TextDirection.ltr,
          child: child,
        );
      },
    );
  }
}
