import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WalletCard extends StatelessWidget {
  final String title;
  final Color backgeoundColor;
  final Color textColor;
  final dividerColor;
  final int totalPrice;

  const WalletCard(
      {Key? key,
      this.backgeoundColor = Colors.white,
      this.textColor = Colors.white70,
      this.dividerColor = Colors.white30,
      required this.totalPrice,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat.decimalPattern();

    return Card(
      color: backgeoundColor,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/images/riyal.png',
              width: 65,
              height: 65,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(85, 0, 25, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (this.title.isNotEmpty) ...[
                  Text(
                    this.title,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: backgeoundColor == Colors.white
                          ? Colors.white30
                          : textColor,
                      fontSize: 14,
                      fontFamily: "IranYekan",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                Text(
                  "موجودی حساب",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: backgeoundColor == Colors.white
                        ? Colors.white30
                        : textColor,
                    fontSize: 10,
                    fontFamily: "IranYekan",
                  ),
                ),
                Text(
                  formatter.format(totalPrice),
                  style: TextStyle(
                    color: backgeoundColor == Colors.white
                        ? Colors.white30
                        : textColor,
                    fontSize: 23,
                    fontFamily: 'IranYekan',
                  ),
                ),
                Divider(color: dividerColor),
                Text(
                  "مجموع امروز: " + formatter.format(133235),
                  style: TextStyle(
                    color: backgeoundColor == Colors.white
                        ? Colors.white30
                        : textColor,
                    fontSize: 12,
                    fontFamily: 'IranYekan',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
