import 'package:flutter/material.dart';

class KkangPushNavThreeScreen extends StatelessWidget {
  const KkangPushNavThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ThreeScreen"),
        ),
        body: Container(
          color: Colors.yellow,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "ThreeScreen",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/kkang_push_four");
                  },
                  child: const Text("Go Four"),
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
