import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/login_page.dart';

class IntroductionLogin extends StatelessWidget {
  const IntroductionLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: const Size(400, 60),
          ),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
