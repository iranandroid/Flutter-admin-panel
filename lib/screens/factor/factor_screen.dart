import 'package:admin/screens/dashboard/components/recent_files.dart';
import 'package:flutter/material.dart';

class FactorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RecentFiles(
      title: "لیست فاکتورها",
      isShowTitle: false,
    );
  }
}
