import 'package:flutter/material.dart';
import 'package:record_flutter/screens/main_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, MainScreen.routeName);
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        "플러터 공부",
        style: TextStyle(
          color: Colors.amber[300],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
