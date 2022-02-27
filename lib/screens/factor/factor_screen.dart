import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/recent_files.dart';
import 'package:admin/widget/wallet_card.dart';
import 'package:flutter/material.dart';

class FactorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RecentFiles(
            title: "لیست فاکتورها",
            isShowTitle: false,
          ),
        ],
      ),
    );
  }
}
