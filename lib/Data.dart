import 'package:flutter/cupertino.dart';

class Data {
  final String? title, description, currencySymbol;
  final int? totalPrice;
  final Color? bgColor, textColor, dividerColor;

  const Data(
      {this.title,
      this.description,
      this.currencySymbol,
      this.totalPrice,
      this.bgColor,
      this.textColor,
      this.dividerColor});
}

List walletList = [
  Data(title: "", totalPrice: 25734000),
  Data(title: "حساب ارزی", currencySymbol: "\$", totalPrice: 400),
  Data(title: "حساب تتنخواه", totalPrice: 1256712000),
  Data(title: "حساب قرض الحسنه", totalPrice: 547000)
];
