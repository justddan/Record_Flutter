import 'package:flutter/material.dart';

class KkangInheritedState extends StatelessWidget {
  const KkangInheritedState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Inherited Test"),
        ),
        body: KkangMyInheritedWidget(KkangTestWidget()),
      ),
    );
  }
}

class KkangMyInheritedWidget extends InheritedWidget {
  int count = 0;

  KkangMyInheritedWidget(child, {super.key}) : super(child: child);

  increment() {
    count++;
  }

  @override
  bool updateShouldNotify(KkangMyInheritedWidget oldWidget) => true;

  static KkangMyInheritedWidget? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<KkangMyInheritedWidget>();
}

class KkangTestSubWidget extends StatelessWidget {
  const KkangTestSubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int count = KkangMyInheritedWidget.of(context)!.count;
    return Container(
      width: 200,
      height: 200,
      color: Colors.yellow,
      child: Center(
        child: Text(
          "SubWidget : $count",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class KkangTestWidget extends StatelessWidget {
  KkangTestWidget({super.key}) {
    print("TestWidget contructor..");
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        KkangMyInheritedWidget? widget = KkangMyInheritedWidget.of(context);
        int counter = KkangMyInheritedWidget.of(context)!.count;
        Function increment = KkangMyInheritedWidget.of(context)!.increment;
        return Center(
          child: Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "TestWidget : $counter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => increment()),
                  child: Text("increment()"),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => widget!.count++),
                  child: Text("count++"),
                ),
                KkangTestSubWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
