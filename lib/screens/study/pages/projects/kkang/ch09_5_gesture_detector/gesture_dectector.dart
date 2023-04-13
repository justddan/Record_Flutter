import 'package:flutter/material.dart';

class KkangGestureDetector extends StatelessWidget {
  const KkangGestureDetector({super.key});

  onPressed() {
    print("icon button click....");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gesture Detector Test"),
        ),
        body: Column(
          children: [
            GestureDetector(
              child: Image.asset(
                  "assets/study/kkang/ch9_1_asset/images/icon/user.png"),
              onTap: () {
                print("image click...");
              },
              onVerticalDragStart: (DragStartDetails details) {
                print(
                    "vertical drag start...global position : ${details.globalPosition.dx}, ${details.globalPosition.dy}");
                print(
                    "vertical drag start...local position : ${details.localPosition.dx}, ${details.localPosition.dy}");
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Elevated button click...");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              child: const Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}
