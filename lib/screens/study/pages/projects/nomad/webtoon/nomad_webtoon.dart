import 'package:flutter/material.dart';
import './screens/home_screen.dart';

class NomadWebtoon extends StatelessWidget {
  const NomadWebtoon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
