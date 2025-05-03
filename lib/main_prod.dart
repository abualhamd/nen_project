import 'package:flutter/material.dart';

import 'flavor_config.dart' show FlavorConfig;
import 'nen_app.dart' show NenApp;

void main() {
  FlavorConfig(title: "Nen Production", flavor: "prod");

  runApp(const NenApp());
}
