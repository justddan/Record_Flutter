import 'package:flutter/material.dart';

class KkangPosition extends StatelessWidget {
  const KkangPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Position Test"),
        ),
        body: Stack(children: [
          Align(
            alignment: const Alignment(0.0, 0.0),
            child: Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
            ),
          ),
          Align(
            alignment: const FractionalOffset(1.0, 0),
            child: Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
          ),
          Positioned(
            left: 40.0,
            height: 40.0,
            child: Container(
              color: Colors.pink,
              width: 150.0,
              height: 150.0,
            ),
          ),
        ]),
      ),
    );
  }
}
