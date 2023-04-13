import 'package:flutter/material.dart';

class KkangCustomScrollView extends StatefulWidget {
  const KkangCustomScrollView({super.key});

  @override
  State<KkangCustomScrollView> createState() => _KkangCustomScrollViewState();
}

class _KkangCustomScrollViewState extends State<KkangCustomScrollView> {
  List<Widget> getWidgets() {
    List<Widget> widgets = [];
    for (var i = 0; i < 100; i++) {
      widgets.add(
        ListTile(
          title: Text("Hello World Item $i"),
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(Icons.expand),
                onPressed: () {},
              ),
              expandedHeight: 200,
              floating: true,
              pinned: false,
              snap: true,
              elevation: 50,
              backgroundColor: Colors.pink,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/study/kkang/ch9_3_image/big.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: const Text("AppBar Title"),
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_alert),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.phone),
                ),
              ],
            ),
            SliverFixedExtentList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return ListTile(
                  title: Text("Hello World Item $index"),
                );
              }),
              itemExtent: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
