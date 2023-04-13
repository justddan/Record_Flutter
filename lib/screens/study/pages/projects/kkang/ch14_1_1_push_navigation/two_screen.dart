import 'package:flutter/material.dart';

class KkangPushNavTwoScreen extends StatelessWidget {
  const KkangPushNavTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/kkang_push_three");
                  },
                  child: const Text("Go Three"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
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
