import 'package:flutter/material.dart';

class KkangGrandparentState extends StatefulWidget {
  const KkangGrandparentState({super.key});

  @override
  State<KkangGrandparentState> createState() => _KkangGrandparentStateState();
}

class _KkangGrandparentStateState extends State<KkangGrandparentState> {
  bool favorited = false;
  int favoriteCount = 10;
  GlobalKey<_KkangChildWidgetState> childKey = GlobalKey();
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
    _KkangChildWidgetState? childState = childKey.currentState;
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
            const KkangIconWidget(),
            const KkangContentWidget(),
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
    return _KkangChildWidgetState();
  }
}

class _KkangChildWidgetState extends State<KkangChildWidget> {
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
    _KkangGrandparentStateState? state =
        context.findAncestorStateOfType<_KkangGrandparentStateState>();

    return Center(
      child: Column(
        children: [
          Text("${state!.favorited}"),
          IconButton(
            icon: ((state.favorited)
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border)),
            color: Colors.red,
            iconSize: 200,
            onPressed: state.toggleFavorite,
          ),
        ],
      ),
    );
  }
}

class KkangContentWidget extends StatelessWidget {
  const KkangContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    _KkangGrandparentStateState? state =
        context.findAncestorStateOfType<_KkangGrandparentStateState>();
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
