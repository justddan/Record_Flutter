import 'package:flutter/material.dart';

class KkangParentState extends StatefulWidget {
  const KkangParentState({super.key});

  @override
  State<KkangParentState> createState() => _KkangParentStateState();
}

class _KkangParentStateState extends State<KkangParentState> {
  bool favorited = false;
  int favoriteCount = 10;

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Parent State Test",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KkangIconWidget(
              favorited: favorited,
              onChanged: toggleFavorite,
            ),
            KkangContentWidget(
              favoriteCount: favoriteCount,
            ),
          ],
        ),
      ),
    );
  }
}

class KkangIconWidget extends StatelessWidget {
  final bool favorited;
  final Function onChanged;

  const KkangIconWidget(
      {super.key, required this.favorited, required this.onChanged});

  void _handleTap() {
    onChanged();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: (favorited
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border)),
        iconSize: 200,
        color: Colors.red,
        onPressed: _handleTap,
      ),
    );
  }
}

class KkangContentWidget extends StatelessWidget {
  final int favoriteCount;

  const KkangContentWidget({super.key, required this.favoriteCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "favoriteCount : $favoriteCount",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
