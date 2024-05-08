import 'package:go_router/go_router.dart';

import '../screens/bottom_navigation/bottom_navigation.dart';
import '../screens/on_boarding_screen/on_boarding_screen.dart';
import '../screens/phone/phone_screen.dart';
import '../screens/skip.dart';
import '../screens/verification_code.dart';

final router = GoRouter(
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
