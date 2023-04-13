import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KkangIcon extends StatelessWidget {
  const KkangIcon({super.key});

  onPressed() {
    print("icon button click....");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Icon Test"),
        ),
        body: Column(children: [
          const Icon(
            Icons.alarm,
            size: 100,
            color: Colors.red,
          ),
          const FaIcon(
            FontAwesomeIcons.bell,
            size: 100,
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.alarm,
              size: 100,
            ),
          ),
        ]),
      ),
    );
  }
}
