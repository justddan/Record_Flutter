import 'package:flutter/material.dart';

class KkangGridView extends StatelessWidget {
  const KkangGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> citys = [
      "서울시",
      "인천시",
      "부산시",
      "대구시",
      "대전시",
      "광주시",
      "울산시",
      "세종시",
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GridView Test"),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Text(
                    citys[index],
                  ),
                  Image.asset("assets/study/kkang/ch9_3_image/big.jpeg"),
                ],
              ),
            );
          },
          itemCount: citys.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
