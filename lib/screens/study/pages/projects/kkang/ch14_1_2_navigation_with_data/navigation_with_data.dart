import 'package:flutter/material.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_2_navigation_with_data/four_screen.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_2_navigation_with_data/one_screen.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_2_navigation_with_data/three_screen.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_2_navigation_with_data/two_screen.dart';

class KkangNavigationWithData extends StatelessWidget {
  const KkangNavigationWithData({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/kkang_data_one",
      routes: {
        "/kkang_data_one": (context) => const KkangNavDataOneScreen(),
        "/kkang_data_two": (context) => const KkangNavDataTwoScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == "/kkang_data_three") {
          return MaterialPageRoute(
            builder: (context) => const KkangNavDataThreeScreen(),
            settings: settings,
          );
        } else if (settings.name == "/kkang_data_four") {
          return MaterialPageRoute(
            builder: (context) => const KkangNavDataFourScreen(),
            settings: settings,
          );
        }
        return null;
      },
    );
  }
}
