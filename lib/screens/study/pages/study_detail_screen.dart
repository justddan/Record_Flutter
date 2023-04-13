import 'package:flutter/material.dart';
import 'package:record_flutter/models/contents.dart';
import 'package:record_flutter/screens/study/components/study_detail_widget.dart';

class StudyDetailScreen extends StatefulWidget {
  final String title, thumb;
  final int id;

  const StudyDetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<StudyDetailScreen> createState() => _StudyDetailScreenState();
}

class _StudyDetailScreenState extends State<StudyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.id,
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
                        widget.thumb,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  for (var content in contents[widget.id])
                    StudyDetail(id: content.id, contents: content)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
