import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDataModel1 with ChangeNotifier {
  int data = 0;

  void changeData() {
    data++;
    notifyListeners();
  }
}

class MyDataModel2 with ChangeNotifier {
  String data = "hello";

  void changeData() {
    if (data == "hello") {
      data = "world";
    } else {
      data = "hello";
    }
    notifyListeners();
  }
}

class KkangConsumer extends StatelessWidget {
  const KkangConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Consumer Test"),
        ),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider<MyDataModel1>.value(value: MyDataModel1()),
            ChangeNotifierProvider<MyDataModel2>.value(value: MyDataModel2()),
          ],
          child: KkangConsumerHomeWidget(),
        ),
      ),
    );
  }
}

class KkangConsumerHomeWidget extends StatelessWidget {
  const KkangConsumerHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer2<MyDataModel1, MyDataModel2>(
              builder: (context, model1, model2, child) {
                return KkangConsumerSubWidget1(model1, model2, child);
              },
              child: KkangConsumerSubWidget2(),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    var model1 =
                        Provider.of<MyDataModel1>(context, listen: false);
                    model1.changeData();
                  },
                  child: Text("model1 change"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var model2 =
                        Provider.of<MyDataModel2>(context, listen: false);
                    model2.changeData();
                  },
                  child: Text("model2 change"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class KkangConsumerSubWidget1 extends StatelessWidget {
  MyDataModel1 model1;
  MyDataModel2 model2;
  Widget? child;

  KkangConsumerSubWidget1(this.model1, this.model2, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "I am SubWidget1, ${model1.data}, ${model2.data}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          child!,
        ],
      ),
    );
  }
}

class KkangConsumerSubWidget2 extends StatelessWidget {
  const KkangConsumerSubWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      padding: EdgeInsets.all(20),
      child: Text(
        "I am SubWidget2",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
