import 'package:flutter/material.dart';
import 'package:record_flutter/models/books.dart';
import 'package:record_flutter/screens/study/components/study_widget.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          "개인 공부",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Expanded(child: makeList(books)),
        ],
      ),
    );
  }

  ListView makeList(List<Book> books) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        var book = books[index];
        return Study(
          title: book.title,
          thumb: book.imgPath,
          id: book.id,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 40),
    );
  }
}
