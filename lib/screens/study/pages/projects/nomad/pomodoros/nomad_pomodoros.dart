import 'package:flutter/material.dart';
import './screens/home_screen.dart';

class NomadPomodoros extends StatelessWidget {
  const NomadPomodoros({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}


//  return MaterialApp(
//       theme: ThemeData(
// colorScheme: ColorScheme.fromSwatch(backgroundColor: const Color(0xFFE7626C),),
// textTheme: const TextTheme(
// headline1: TextStyle(
// color: Color(0xFF232B55),
// ),
// ),
// cardColor: const Color(0xFFF4EDDB),
// ),
//       home: const HomeScreen(),
//     );