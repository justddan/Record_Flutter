import 'package:flutter/material.dart';

class KkangText extends StatelessWidget {
  const KkangText({super.key});

  @override
  Widget build(BuildContext context) {
    String longTxt =
        '동해물과 백두산이 마고 닳도록 하느님이 보우하사 우리나라만세. 무궁화 삼천리 화려강산 대한 사람 대한으로 길이 보전하세';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Test"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Hello World",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.red,
                fontSize: 20,
                height: 2,
                backgroundColor: Colors.yellow,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
              ),
            ),
            Text(
              longTxt,
              style: const TextStyle(
                fontSize: 20,
              ),
              maxLines: 2,
              overflow: TextOverflow.fade,
            ),
            RichText(
              text: const TextSpan(
                text: "HE",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "L",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    children: [
                      TextSpan(text: "LO"),
                      TextSpan(
                        text: "WO",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "RLD",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
