import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_for_practice/screens/details.dart';
import 'package:navigation_for_practice/screens/home.dart';
import 'package:navigation_for_practice/screens/profile.dart';
import 'package:navigation_for_practice/screens/settings.dart';

import '../screens/bottom_navigation/bottom_navigation.dart';
import '../screens/on_boarding_screen/on_boarding_screen.dart';
import '../screens/phone/phone_screen.dart';
import '../screens/skip.dart';
import '../screens/verification_code.dart';

//-------------------Initial Setup---------------------------

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final routers = GoRouter(
  navigatorKey: _rootNavigatorKey,
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
            extra: state.extra as Completer<bool>,
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
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return BottomNavigationScreen(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: HomeScreen.routePath,
          name: HomeScreen.routeName,
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
              path: DetailsScreen.routePath,
              // name: DetailsScreen.routeName,
              builder: (context, state) => const DetailsScreen(label: 'Home'),
            ),
          ],
        ),
        GoRoute(
          path: ProfileScreen.routePath,
          name: ProfileScreen.routeName,
          builder: (context, state) => const ProfileScreen(),
          routes: [
            GoRoute(
              path: DetailsScreen.routePath,
              // name: DetailsScreen.routeName,
              builder: (context, state) =>
                  const DetailsScreen(label: 'Profile'),
            ),
          ],
        ),
        GoRoute(
          path: SettingsScreen.routePath,
          name: SettingsScreen.routeName,
          builder: (context, state) => const SettingsScreen(),
          routes: [
            GoRoute(
              path: DetailsScreen.routePath,
              // name: DetailsScreen.routeName,
              builder: (context, state) =>
                  const DetailsScreen(label: 'Settings'),
            ),
          ],
        ),
      ],
    ),
    // GoRoute(
    //   path: BottomNavigationScreen.routePath,
    //   name: BottomNavigationScreen.routeName,
    //   builder: (context, state) => const BottomNavigationScreen(),
    // ),
  ],
);

//----------------------------------------------

//----------------------------------------------
// Routing Config Example Add Route Runtime

// RoutingConfig _generateRoutingConfig() {
//   return RoutingConfig(
//     routes: <RouteBase>[
//       GoRoute(
//         path: OnBoardingScreen.routePath,
//         name: OnBoardingScreen.routeName,
//         builder: (context, state) => const OnBoardingScreen(),
//         routes: [
//           GoRoute(
//             path: '${PhoneScreen.routePath}/:phoneId',
//             name: PhoneScreen.routeName,
//             builder: (context, state) => PhoneScreen(
//               extra: state.extra as String?,
//               phoneId: state.pathParameters['phoneId'],
//             ),
//           ),
//           GoRoute(
//             path: SkipScreen.routePath,
//             name: SkipScreen.routeName,
//             builder: (context, state) => const SkipScreen(),
//           ),
//         ],
//       ),
//       if (isNewRouteAdded)
//         GoRoute(
//           path: BottomNavigationScreen.routePath,
//           name: BottomNavigationScreen.routeName,
//           builder: (context, state) => const BottomNavigationScreen(),
//         ),
//     ],
//   );
// }
//
// bool isNewRouteAdded = false;
//
// final ValueNotifier<RoutingConfig> myRoutingConfig =
//     ValueNotifier<RoutingConfig>(
//   _generateRoutingConfig(),
// );
//
// final GoRouter router = GoRouter.routingConfig(routingConfig: myRoutingConfig);
//
// void addNewRoute() {
//   isNewRouteAdded = true;
//   myRoutingConfig.value = _generateRoutingConfig();
// }
//----------------------------------------------

// Add Shell Routes after skip button
