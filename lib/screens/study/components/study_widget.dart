import 'package:flutter/material.dart';
import 'package:record_flutter/screens/study/pages/study_detail_screen.dart';

class Study extends StatelessWidget {
  final String title, thumb;
  final int id;

  const Study({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudyDetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: const Offset(10, 10),
                      color: Colors.black.withOpacity(0.5),
                    )
                  ]),
              child: Image.asset(
                thumb,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 22, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
