import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:record_flutter/models/contents.dart';

class StudyDetail extends StatelessWidget {
  final int id;
  final Content contents;

  const StudyDetail({
    super.key,
    required this.id,
    required this.contents,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => contents.project);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber[300],
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: const Offset(5, 5),
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(contents.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
              const Icon(
                Icons.chevron_right_rounded,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
