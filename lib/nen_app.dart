import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;

import 'app/app.dart' show appRouter;
import 'flavor_config.dart' show FlavorConfig;
import 'injection_container.dart' show getIt;
import 'presentation/presentation.dart' show AuthBloc;

class NenApp extends StatelessWidget {
  const NenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: MaterialApp.router(
        routerConfig: appRouter,
        title: FlavorConfig.appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
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
      ),
    );
  }
}
