import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultSearchField extends StatefulWidget {
  const DefaultSearchField({super.key});

  @override
  State<DefaultSearchField> createState() => _DefaultSearchFieldState();
}

class _DefaultSearchFieldState extends State<DefaultSearchField> {
  final FocusNode _focusNode = FocusNode();
  bool isFocus = false;

  @override
  void initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod(("TextInput.hide"));
    _focusNode.addListener(() {
      _onFocusChange();
    });
  }

  void _onFocusChange() {
    setState(() {
      isFocus = !isFocus;
    });
  }

  void _unFocus() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: _focusNode,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[100],
              hintText: "검색어를 입력해주세요",
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(
          width: isFocus ? 50 : 0,
          child: isFocus
              ? Center(
                  child: GestureDetector(
                    onTap: _unFocus,
                    child: const Text(
                      "취소",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
              : const SizedBox(),
        )
      ],
    );
  }
}
