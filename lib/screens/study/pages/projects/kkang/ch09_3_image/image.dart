import 'package:flutter/material.dart';

class KkangImage extends StatelessWidget {
  const KkangImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Test"),
        ),
        body: Column(
          children: [
            const Image(
              image: NetworkImage(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
              ),
            ),
            Container(
              color: Colors.red,
              child: Image.asset(
                "assets/study/kkang/ch9_3_image/big.jpeg",
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
