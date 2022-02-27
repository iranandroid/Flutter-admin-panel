import 'package:admin/Data.dart';
import 'package:flutter/material.dart';

import '../../widget/wallet_card.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: walletList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: walletList.length,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 2,
      ),
      itemBuilder: (context, index) => WalletCard(
        totalPrice: walletList[index].totalPrice,
        backgeoundColor: Color(0xff17b2de),
        textColor: Colors.white,
        dividerColor: Color(0xffc2e3f2),
        title: walletList[index].title,
      ),
    );
  }
}
