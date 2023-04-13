import 'package:flutter/material.dart';

class KkangRestArrangement extends StatelessWidget {
  const KkangRestArrangement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Rest Arrangement Test",
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                child: Row(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      width: 100,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.amber),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.yellow),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                height: 300,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                        "assets/study/kkang/ch10_4/lab_instagram_icon_1.jpg"),
                    Image.asset(
                        "assets/study/kkang/ch10_4/lab_instagram_icon_2.jpg"),
                    Image.asset(
                        "assets/study/kkang/ch10_4/lab_instagram_icon_3.jpg"),
                    const Spacer(),
                    Image.asset(
                        "assets/study/kkang/ch10_4/lab_instagram_icon_4.jpg"),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
