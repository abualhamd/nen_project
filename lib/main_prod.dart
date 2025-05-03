import 'package:flutter/material.dart';

import 'flavor_config.dart' show FlavorConfig;
import 'injection_container.dart' show initDependencies;
import 'nen_app.dart' show NenApp;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();

  FlavorConfig(title: "Nen Production", flavor: "prod");

  runApp(const NenApp());
}
