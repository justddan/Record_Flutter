import 'package:flutter/material.dart';

class KkangPushNavOneScreen extends StatelessWidget {
  const KkangPushNavOneScreen({super.key});

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
                  onPressed: () {
                    Navigator.pushNamed(context, "/kkang_push_two");
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
