import 'package:flutter/material.dart';

class KkangStateful extends StatefulWidget {
  const KkangStateful({super.key});

  @override
  State<KkangStateful> createState() => _KkangStatefulState();
}

class _KkangStatefulState extends State<KkangStateful> {
  bool enabled = false;

  String stateText = "disable";

  void changeCheck() {
    setState(() {
      if (enabled) {
        stateText = "disable";
        enabled = false;
      } else {
        stateText = "enable";
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Test"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: changeCheck,
                icon: (enabled
                    ? const Icon(
                        Icons.check_box,
                        size: 20,
                      )
                    : const Icon(
                        Icons.check_box_outline_blank,
                        size: 20,
                      )),
                color: Colors.red,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  stateText,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
