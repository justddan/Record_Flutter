import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';

class StackIcon extends StatelessWidget {
  final String? imgPath;
  final GestureTapCallback? onPressed;
  final String? counter;

  const StackIcon({
    super.key,
    this.imgPath,
    this.onPressed,
    this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            imgPath ?? "assets/study/practice/kurly/icons/shopping-cart.svg",
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        Positioned(
          top: 10,
          right: 5,
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Center(
              child: Text(
                "$counter",
                style: const TextStyle(fontSize: 10, color: kPrimaryColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
