import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/product_details_arguments.dart';
import '../components/default_button.dart';
import '../details/components/body.dart';
import '../../theme.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "${arguments.product.title}",
          style: textTheme().titleMedium?.copyWith(color: Colors.black),
        ),
      ),
      body: Body(
        product: arguments.product,
      ),
      bottomNavigationBar: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: DefaultButton(
              text: "구매하기",
              color: kPrimaryColor,
              press: () {},
            ),
          )
        ],
      )),
    );
  }
}
