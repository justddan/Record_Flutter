import 'package:flutter/material.dart';

class KkangContainer extends StatelessWidget {
  const KkangContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container Test",
          ),
        ),
        body: Container(
          height: Size.infinite.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red,
                Colors.yellow,
              ],
            ),
          ),
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/study/kkang/ch9_3_image/big.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
