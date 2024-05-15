import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'details.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = 'settings-screen';
  static const routePath = '/$routeName';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Settings Detail',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          onPressed: () =>
              GoRouter.of(context).go("$routePath/${DetailsScreen.routeName}"),
        ),
      ),
    );
  }
}
