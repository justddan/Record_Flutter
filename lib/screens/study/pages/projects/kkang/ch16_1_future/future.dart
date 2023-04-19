import 'package:flutter/material.dart';

class KkangFuture extends StatelessWidget {
  const KkangFuture({super.key});

  @override
  Widget build(BuildContext context) {
    Future<int> sum() {
      return Future<int>(() {
        var sum = 0;
        for (var i = 0; i < 500000000; i++) {
          sum += i;
        }
        return sum;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Future Test",
          ),
        ),
        body: FutureBuilder(
          future: sum(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(
                  "${snapshot.data}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              );
            }
            return const Center(
              child: Text(
                "waiting",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
