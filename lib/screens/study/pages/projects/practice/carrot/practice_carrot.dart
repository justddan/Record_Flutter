import 'package:flutter/material.dart';
import './screens/main_screens.dart';
import './theme.dart';

class PracticeCarrot extends StatelessWidget {
  const PracticeCarrot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "carrot_market_ui",
      debugShowCheckedModeBanner: false,
      home: const MainScreens(),
      theme: theme(),
    );
  }
}
