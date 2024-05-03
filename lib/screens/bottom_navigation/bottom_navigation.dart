import 'package:flutter/material.dart';
import 'package:navigation_for_practice/screens/profile.dart';
import 'package:navigation_for_practice/screens/settings.dart';

import '../../utils/colors.dart';
import '../../utils/text_theme.dart';
import '../home.dart';

class BottomNavigationScreen extends StatefulWidget {
  static const routeName = '/bottom-navigation-screen';
  static const pageName = '/$routeName';

  const BottomNavigationScreen({super.key});

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  void backToHome() {
    setState(() {
      _currrentIndex = 0;
    });
  }

  int _currrentIndex = 0;
  final List<Widget> _myWidget = [
    const HomeScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray1,
      body: _myWidget[_currrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: AppColor.onSecondary,
        selectedItemColor: AppColor.primaryLight,
        // selectedIconTheme: ,
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
        currentIndex: _currrentIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currrentIndex = index;
    });
  }
}
