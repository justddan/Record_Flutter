import 'dart:async';

import 'package:flutter/material.dart';

class KkangStreamEtc extends StatelessWidget {
  const KkangStreamEtc({super.key});

  @override
  Widget build(BuildContext context) {
    subscriptionTest() {
      var stream = Stream.fromIterable([1, 2, 3]);

      StreamSubscription subscription = stream.listen(null);

      subscription.onData((data) {
        print("value : $data");
      });

      subscription.onError((error) {
        print("error : $error");
      });

      subscription.onDone(() {
        print("stream done...");
      });
    }

    controllerTest() {
      var controller = StreamController();

      var stream1 = Stream.fromIterable([1, 2, 3]);
      var stream2 = Stream.fromIterable(["A", "B", "C"]);

      stream1.listen((value) {
        controller.add(value);
      });
      stream2.listen((value) {
        controller.add(value);
      });

      controller.stream.listen((value) {
        print("$value");
      });
    }

    transformerTest() {
      var stream = Stream.fromIterable([1, 2, 3]);

      StreamTransformer<int, dynamic> transformer =
          StreamTransformer.fromHandlers(
        handleData: (value, sink) {
          print("in transformer... $value");
          sink.add(value * value);
        },
      );

      stream.transform(transformer).listen((value) {
        print("in listen ...$value");
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Stream etc Test",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: subscriptionTest,
                child: const Text("Subscription"),
              ),
              ElevatedButton(
                onPressed: controllerTest,
                child: const Text("Controller"),
              ),
              ElevatedButton(
                onPressed: transformerTest,
                child: const Text("Transformer"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
