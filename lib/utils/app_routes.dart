import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../screens/bottom_navigation/bottom_navigation.dart';
import '../screens/on_boarding_screen/on_boarding_screen.dart';
import '../screens/phone/phone_screen.dart';
import '../screens/skip.dart';
import '../screens/verification_code.dart';

final routers = GoRouter(
  initialLocation: OnBoardingScreen.routePath,
  routes: [
    GoRoute(
      path: OnBoardingScreen.routePath,
      name: OnBoardingScreen.routeName,
      builder: (context, state) => const OnBoardingScreen(),
      routes: [
        GoRoute(
          path: '${PhoneScreen.routePath}/:phoneId',
          name: PhoneScreen.routeName,
          builder: (context, state) => PhoneScreen(
            extra: state.extra as String?,
            phoneId: state.pathParameters['phoneId'],
            phoneName: state.uri.queryParameters['phoneName'],
          ),
          routes: [
            GoRoute(
              path: VerificationScreen.routePath,
              name: VerificationScreen.routeName,
              builder: (context, state) => const VerificationScreen(),
            ),
          ],
        ),
        GoRoute(
          path: SkipScreen.routePath,
          name: SkipScreen.routeName,
          builder: (context, state) => const SkipScreen(),
        ),
      ],
    ),
    GoRoute(
      path: BottomNavigationScreen.routePath,
      name: BottomNavigationScreen.routeName,
      builder: (context, state) => const BottomNavigationScreen(),
    ),
  ],
);

//----------------------------------------------
// Routing Config Example Add Route Runtime

RoutingConfig _generateRoutingConfig() {
  return RoutingConfig(
    routes: <RouteBase>[
      GoRoute(
        path: OnBoardingScreen.routePath,
        name: OnBoardingScreen.routeName,
        builder: (context, state) => const OnBoardingScreen(),
        routes: [
          GoRoute(
            path: '${PhoneScreen.routePath}/:phoneId',
            name: PhoneScreen.routeName,
            builder: (context, state) => PhoneScreen(
              extra: state.extra as String?,
              phoneId: state.pathParameters['phoneId'],
            ),
            routes: [
              GoRoute(
                path: VerificationScreen.routePath,
                name: VerificationScreen.routeName,
                builder: (context, state) => const VerificationScreen(),
              ),
            ],
          ),
          GoRoute(
            path: SkipScreen.routePath,
            name: SkipScreen.routeName,
            builder: (context, state) => const SkipScreen(),
          ),
        ],
      ),
      if (isNewRouteAdded)
        GoRoute(
          path: BottomNavigationScreen.routePath,
          name: BottomNavigationScreen.routeName,
          builder: (context, state) => const BottomNavigationScreen(),
        ),
    ],
  );
}

bool isNewRouteAdded = false;

final ValueNotifier<RoutingConfig> myRoutingConfig =
    ValueNotifier<RoutingConfig>(
  _generateRoutingConfig(),
);

final GoRouter router = GoRouter.routingConfig(routingConfig: myRoutingConfig);

void addNewRoute() {
  isNewRouteAdded = true;
  myRoutingConfig.value = _generateRoutingConfig();
}
//----------------------------------------------
