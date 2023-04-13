import 'package:flutter/material.dart';
import '../../../../theme.dart';

class ProductFilterButton extends StatefulWidget {
  const ProductFilterButton({super.key});

  @override
  State<ProductFilterButton> createState() => _ProductFilterButtonState();
}

class _ProductFilterButtonState extends State<ProductFilterButton> {
  String _selectedUItem = "신상품순";
  final List _options = ["신상품순", "인기순", "혜택순"];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      offset: const Offset(0, 0),
      icon: Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          onPressed: null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                _selectedUItem,
                style: textTheme().bodyMedium?.copyWith(
                      color: Colors.black,
                    ),
              )
            ],
          ),
        ),
      ),
      onSelected: (value) {
        setState(() {
          _selectedUItem = value.toString();
        });
      },
      itemBuilder: (BuildContext context) {
        return _options
            .map((option) => PopupMenuItem(
                  value: option,
                  child: Text("$option", style: textTheme().bodyMedium),
                ))
            .toList();
      },
    );
  }
}
