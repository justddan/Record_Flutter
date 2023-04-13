import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          disabledBorder: _buildOutlineInputBorder(),
          enabledBorder: _buildOutlineInputBorder(),
          focusedBorder: _buildOutlineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          contentPadding:
              const EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 0),
          hintText: "좌동 주변 가게를 찾아 보세요.",
          hintStyle: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
