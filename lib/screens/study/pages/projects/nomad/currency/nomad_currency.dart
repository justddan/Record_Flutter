import 'package:flutter/material.dart';
import './widgets/button.dart';
import './widgets/unit_card.dart';
// import 'package:record_flutter/screens/study/pages/projects/nomad/currency/widgets/button.dart';
// import 'package:record_flutter/screens/study/pages/projects/nomad/currency/widgets/unit_card.dart';

class NomadCurrency extends StatelessWidget {
  const NomadCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "Hey, Selena",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  "Total Balance",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: "Transfer",
                      bgColor: Color(0xFFF2B33A),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: "Request",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("Wallet",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("View All",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 18,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const UnitCard(
                  name: "Euro",
                  money: "6 428",
                  unit: "EUR",
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: const UnitCard(
                    name: "Bitcoin",
                    money: "9 785",
                    unit: "BTC",
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const UnitCard(
                    name: "Dollar",
                    money: "428",
                    unit: "USD",
                    icon: Icons.attach_money_rounded,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
