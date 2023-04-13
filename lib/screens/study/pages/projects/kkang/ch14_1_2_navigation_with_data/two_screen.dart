import 'package:flutter/material.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_2_navigation_with_data/nav_data_user.dart';

class KkangNavDataTwoScreen extends StatelessWidget {
  const KkangNavDataTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, Object> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TwoScreen"),
        ),
        body: Container(
          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "TwoScreen",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                    "sendData:${args["arg1"]}, ${args["arg2"]}, ${(args["arg3"] as NavDataUser).name}"),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/kkang_data_three");
                  },
                  child: const Text("Go Three"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, NavDataUser("kim", "busan"));
                  },
                  child: const Text("Pop"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
