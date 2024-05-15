import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_for_practice/screens/bottom_navigation/bottom_navigation.dart';
import 'package:navigation_for_practice/screens/home.dart';
import 'package:navigation_for_practice/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:navigation_for_practice/utils/app_routes.dart';

class SkipScreen extends StatelessWidget {
  static const routeName = 'skip-screen';
  static const routePath = routeName;

  const SkipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skip'),
      ),
      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                // addNewRoute();
              },
              child: const Text('Add new route'),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                // context.go(BottomNavigationScreen.routePath);
                // context.go('/a');
                context.go(HomeScreen.routePath);
              },
              child: const Text('Go to new route'),
            ),
          ),
        ],
      ),
    );
  }
}
