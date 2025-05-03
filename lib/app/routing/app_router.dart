import 'package:flutter/widgets.dart' show GlobalKey, NavigatorState;
import 'package:go_router/go_router.dart';

import '../../presentation/presentation.dart' show HomeScreen;
import 'route_names.dart' show RouteNames;

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: RouteNames.home,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
