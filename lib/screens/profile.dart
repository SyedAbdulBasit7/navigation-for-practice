import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'details.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile-screen';
  static const routePath = '/$routeName';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Profile Detail',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          onPressed: () => GoRouter.of(context).go("$routePath/${DetailsScreen.routeName}"),
        ),
      ),
    );
  }
}
