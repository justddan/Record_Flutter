import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import './stack_icon.dart';

class CustomActions extends StatelessWidget {
  const CustomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(children: [
        SizedBox(
          width: 38,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/study/practice/kurly/icons/pin.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ),
        SizedBox(
          width: 38,
          child: StackIcon(
            imgPath: "assets/study/practice/kurly/icons/shopping-cart.svg",
            onPressed: () {},
            counter: "2",
          ),
        )
      ]),
    );
  }
}
