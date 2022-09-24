import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String id = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Center(
          child: Image(
            image: AssetImage('images/logo.png'),
          ),
        ),
      ),
    );
  }
}
