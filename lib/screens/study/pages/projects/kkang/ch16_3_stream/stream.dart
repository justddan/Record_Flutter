import 'package:flutter/material.dart';

class KkangStream extends StatelessWidget {
  const KkangStream({super.key});

  @override
  Widget build(BuildContext context) {
    int calFun(int x) {
      return x * x;
    }

    Stream<int> test() {
      Duration duration = const Duration(seconds: 3);
      Stream<int> stream = Stream<int>.periodic(duration, calFun);
      return stream.take(5);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stream Test"),
        ),
        body: Center(
            child: StreamBuilder(
          stream: test(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const Center(
                child: Text(
                  "Completed",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircularProgressIndicator(),
                    ),
                    Text(
                      "waiting...",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              );
            }
            return Center(
              child: Text(
                "data: ${snapshot.data}",
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}
