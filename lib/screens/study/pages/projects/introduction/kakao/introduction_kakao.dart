import 'package:flutter/material.dart';
import './screens/main_screen.dart';

class IntroductionKakao extends StatelessWidget {
  const IntroductionKakao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          toolbarTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
