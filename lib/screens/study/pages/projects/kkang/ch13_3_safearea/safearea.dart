import 'package:flutter/material.dart';

class KkangSafeArea extends StatelessWidget {
  const KkangSafeArea({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> getWidgets() {
      List<Widget> widgets = [];
      for (var i = 0; i < 100; i++) {
        widgets.add(
          ListTile(
            title: Text("Hello World Item $i"),
          ),
        );
      }
      return widgets;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: getWidgets(),
            ),
          ),
        ),
      ),
    );
  }
}
