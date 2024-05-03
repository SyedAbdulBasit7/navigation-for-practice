import 'package:go_router/go_router.dart';

import '../screens/bottom_navigation/bottom_navigation.dart';
import '../screens/on_boarding_screen/on_boarding_screen.dart';
import '../screens/phone/phone_screen.dart';
import '../screens/skip.dart';
import '../screens/verification_code.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: OnBoardingScreen.pageName,
      builder: (context, state) => const OnBoardingScreen(),
      routes: [
        GoRoute(
          path: PhoneScreen.routeName,
          name: PhoneScreen.pageName,
          builder: (context, state) => PhoneScreen(
            extra: state.extra as String?,
          ),
          routes: [
            GoRoute(
              path: VerificationScreen.routeName,
              name: VerificationScreen.pageName,
              builder: (context, state) => const VerificationScreen(),
            ),
          ],
        ),
        GoRoute(
          path: SkipScreen.routeName,
          name: SkipScreen.pageName,
          builder: (context, state) => const VerificationScreen(),
        ),
      ],
    ),
    GoRoute(
      path: BottomNavigationScreen.routeName,
      name: BottomNavigationScreen.pageName,
      builder: (context, state) => const BottomNavigationScreen(),
    ),
  ],
);
