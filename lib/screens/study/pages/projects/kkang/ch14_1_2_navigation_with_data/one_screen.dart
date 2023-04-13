import 'package:flutter/material.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_2_navigation_with_data/nav_data_user.dart';

class KkangNavDataOneScreen extends StatelessWidget {
  const KkangNavDataOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("OneScreen"),
        ),
        body: Container(
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "OneScreen",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(
                      context,
                      "/kkang_data_two",
                      arguments: {
                        "arg1": 10,
                        "arg2": "hello",
                        "arg3": NavDataUser("kkang", "seoul"),
                      },
                    );
                    print("result ${(result as NavDataUser).name}");
                  },
                  child: const Text("Go Two"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
