import 'package:flutter/material.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_1_push_navigation/four_screen.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_1_push_navigation/one_screen.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_1_push_navigation/three_screen.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_1_push_navigation/two_screen.dart';

class KkangPushNavigation extends StatelessWidget {
  const KkangPushNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/kkang_push_one", routes: {
      "/kkang_push_one": (context) => const KkangPushNavOneScreen(),
      "/kkang_push_two": (context) => const KkangPushNavTwoScreen(),
      "/kkang_push_three": (context) => const KkangPushNavThreeScreen(),
      "/kkang_push_four": (context) => const KkangPushNavFourScreen(),
    });
  }
}
