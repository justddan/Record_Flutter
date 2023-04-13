import 'package:flutter/material.dart';
import '../../../models/text_menu.dart';
import '../../components/text_menu_card.dart';
import '../../my_kurly/components/my_kurly_header.dart';

class MyKurlyBody extends StatelessWidget {
  const MyKurlyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyKurlyHeader(),
        _buildPaddingTextMenuCard("비회원 주문 조회", () {}),
        SizedBox(
          height: 330,
          child: ListView.separated(
            itemBuilder: (context, index) => SizedBox(
              height: 55,
              child: TextMenuCard(
                title: textMenuList[index].text,
                icon: textMenuList[index].icon,
                press: () {},
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              height: 0,
            ),
            itemCount: textMenuList.length,
          ),
        ),
        _buildPaddingTextMenuCard("컬리 소개", () {})
      ],
    );
  }

  Padding _buildPaddingTextMenuCard(String text, GestureTapCallback press) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: 55,
        child: TextMenuCard(
          title: text,
          icon: "assets/study/practice/kurly/icons/right-arrow.svg",
          press: press,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
