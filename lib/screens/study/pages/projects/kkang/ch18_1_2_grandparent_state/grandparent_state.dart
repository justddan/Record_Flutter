import 'package:flutter/material.dart';

class KkangGrandparentState extends StatefulWidget {
  const KkangGrandparentState({super.key});

  @override
  State<KkangGrandparentState> createState() {
    return KkangGrandparentStateState();
  }
}

class KkangGrandparentStateState extends State<KkangGrandparentState> {
  bool favorited = false;
  int favoriteCount = 10;
  GlobalKey<KkangChildWidgetState> childKey = GlobalKey();
  int childCount = 0;

  void toggleFavorite() {
    setState(() {
      if (favorited) {
        favoriteCount -= 1;
        favorited = false;
      } else {
        favoriteCount += 1;
        favorited = true;
      }
    });
  }

  void getChildData() {
    KkangChildWidgetState? childState = childKey.currentState;
    setState(() {
      childCount = childState?.childCount ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Grandparent State Test",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I am Parent, child count : $childCount "),
                ElevatedButton(
                  onPressed: getChildData,
                  child: const Text("get child data"),
                ),
              ],
            ),
            KkangChildWidget(key: childKey),
            KkangIconWidget(),
            KkangContentWidget(),
          ],
        ),
      ),
    );
  }
}

class KkangChildWidget extends StatefulWidget {
  const KkangChildWidget({super.key});

  @override
  State<KkangChildWidget> createState() {
    return KkangChildWidgetState();
  }
}

class KkangChildWidgetState extends State<KkangChildWidget> {
  int childCount = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("I am Child, $childCount"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              childCount++;
            });
          },
          child: const Text("increment"),
        ),
      ],
    );
  }
}

class KkangIconWidget extends StatelessWidget {
  const KkangIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    KkangGrandparentStateState? state =
        context.findAncestorStateOfType<KkangGrandparentStateState>();
    return Center(
      child: IconButton(
        icon: ((state?.favorited ?? false)
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border)),
        iconSize: 200,
        color: Colors.red,
        onPressed: state?.toggleFavorite,
      ),
    );
  }
}

class KkangContentWidget extends StatelessWidget {
  const KkangContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    KkangGrandparentStateState? state =
        context.findAncestorStateOfType<KkangGrandparentStateState>();
    return Center(
      child: Text(
        "favoriteCount : ${state?.favoriteCount}",
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
