import 'package:flutter/widgets.dart' show GlobalKey, NavigatorState;
import 'package:go_router/go_router.dart';

import '../../presentation/presentation.dart' show HomeScreen, LoginScreen, RegisterScreen;
import 'route_names.dart' show RouteNames;

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: "/${RouteNames.register}",
  routes: [
    GoRoute(
      name: RouteNames.register,
      path: "/${RouteNames.register}",
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      name: RouteNames.login,
      path: "/${RouteNames.login}",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: RouteNames.home,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
