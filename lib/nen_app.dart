import 'package:flutter/foundation.dart';
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
      home: _flavorBanner(child: HomeScreen(), show: kDebugMode),
    );
  }

  Widget _flavorBanner({required Widget child, bool show = true}) =>
      show
          ? Banner(
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
          )
          : child;
}
