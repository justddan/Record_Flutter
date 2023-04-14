import 'package:flutter/material.dart';
import './four_screen.dart';
import './one_screen.dart';
import './three_screen.dart';
import './two_screen.dart';

class KkangPushNavigation extends StatelessWidget {
  const KkangPushNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/kkang_push_one",
      routes: {
        "/kkang_push_one": (context) => const KkangPushNavOneScreen(),
        "/kkang_push_two": (context) => const KkangPushNavTwoScreen(),
        "/kkang_push_three": (context) => const KkangPushNavThreeScreen(),
        "/kkang_push_four": (context) => const KkangPushNavFourScreen(),
      },
    );
  }
}
