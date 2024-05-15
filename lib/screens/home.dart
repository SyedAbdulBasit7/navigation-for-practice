import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_for_practice/screens/details.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home-screen';
  static const routePath = '/$routeName';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Home Detail',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          onPressed: () => GoRouter.of(context).go("$routePath/${DetailsScreen.routeName}"),
        ),
      ),
    );
  }
}
