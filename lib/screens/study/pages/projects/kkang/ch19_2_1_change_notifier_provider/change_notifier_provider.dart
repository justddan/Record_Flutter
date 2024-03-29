import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class KkangChangeNotifierProvider extends StatelessWidget {
  const KkangChangeNotifierProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ChangeNotifierProvider Test"),
        ),
        body: ChangeNotifierProvider<Counter>.value(
          value: Counter(),
          child: KkangChangeNotifierSubWidget(),
        ),
      ),
    );
  }
}

class KkangChangeNotifierSubWidget extends StatelessWidget {
  const KkangChangeNotifierSubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Provider count : ${counter._count}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                counter.increment();
              },
              child: Text(
                "increment",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
