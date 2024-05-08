import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  static const routeName = 'verification-screen';
  static const routePath = routeName;

  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verification'),
      ),
      body: const Center(
        child: Text('Verification'),
      ),
    );
  }
}
