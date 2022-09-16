import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static const route = '/splashPage';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Ini splash page'),
        ),
      ),
    );
  }
}
