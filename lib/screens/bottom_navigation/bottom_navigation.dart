import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_for_practice/screens/profile.dart';
import 'package:navigation_for_practice/screens/settings.dart';

import '../../utils/colors.dart';
import '../../utils/text_theme.dart';
import '../home.dart';

class BottomNavigationScreen extends StatelessWidget {
  final Widget child;

  const BottomNavigationScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray1,
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: AppColor.onSecondary,
        selectedItemColor: AppColor.primaryLight,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: AppTextTheme.bold10(AppColor.blendColor1),
        unselectedLabelStyle: AppTextTheme.bold10(AppColor.textGray),
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int index) => _onItemTapped(index, context),
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith(HomeScreen.routePath)) {
      return 0;
    }
    if (location.startsWith(ProfileScreen.routePath)) {
      return 1;
    }
    if (location.startsWith(SettingsScreen.routePath)) {
      return 2;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(HomeScreen.routePath);
      case 1:
        GoRouter.of(context).go(ProfileScreen.routePath);
      case 2:
        GoRouter.of(context).go(SettingsScreen.routePath);
    }
  }
}
