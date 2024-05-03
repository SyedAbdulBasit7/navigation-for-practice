import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/app_routes.dart';
import 'utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          statusBarColor:
              Colors.transparent //or set color with: Color(0xFF0000FF)
          ),
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GoRouter',
      theme: ThemeData(
        colorScheme: AppTheme.light,
      ),
      routerConfig: router,
    );
  }
}
