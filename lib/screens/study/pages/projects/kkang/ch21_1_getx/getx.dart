import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}

class KkangGetX extends StatelessWidget {
  const KkangGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX Test"),
        ),
        body: GetBuilder(
          init: CounterController(),
          builder: (_) {
            return KkangGetXMyWidget();
          },
        ),
      ),
    );
  }
}

class KkangGetXMyWidget extends StatelessWidget {
  const KkangGetXMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(builder: (controller) {
      return Container(
        color: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "GetX: ${controller.count}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: Text("increment"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.decrement();
                },
                child: Text("decrement"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
