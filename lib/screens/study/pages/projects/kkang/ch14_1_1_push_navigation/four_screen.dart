import 'package:flutter/material.dart';

class KkangPushNavFourScreen extends StatelessWidget {
  const KkangPushNavFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("FourScreen"),
        ),
        body: Container(
          color: Colors.cyan,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "FourScreen",
                  style: TextStyle(color: Colors.white, fontSize: 30),
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
