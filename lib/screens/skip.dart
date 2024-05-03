
import 'package:flutter/material.dart';

class SkipScreen extends StatelessWidget {
  static const routeName = 'skip';
  static const pageName = '/$routeName';
  const SkipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skip'),
      ),
      body: const Center(
        child: Text('Skip'),
      ),
    );
  }
}
