import 'package:flutter/material.dart';

class KkangKey extends StatelessWidget {
  const KkangKey({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListWidget(),
    );
  }
}

class MyListWidget extends StatefulWidget {
  const MyListWidget({super.key});

  @override
  State<MyListWidget> createState() => _MyListWidgetState();
}

class _MyListWidgetState extends State<MyListWidget> {
  List<Widget> widgetList = [
    MyColorItemWidget(
      color: Colors.red,
      key: UniqueKey(),
    ),
    MyColorItemWidget(
      color: Colors.blue,
      key: UniqueKey(),
    ),
  ];

  onChange() {
    print(widgetList.elementAt(0).key);
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Key Test"),
      ),
      body: Column(
        children: [
          Row(
            children: widgetList,
          ),
          ElevatedButton(onPressed: onChange, child: const Text("toggle"))
        ],
      ),
    );
  }
}

class MyColorItemWidget extends StatefulWidget {
  final Color color;
  const MyColorItemWidget({super.key, required this.color});

  @override
  State<MyColorItemWidget> createState() => _MyColorItemWidgetState(color);
}

class _MyColorItemWidgetState extends State<MyColorItemWidget> {
  Color color;
  _MyColorItemWidgetState(this.color);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}
