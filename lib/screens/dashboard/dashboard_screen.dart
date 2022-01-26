import 'package:flutter/material.dart';

import 'components/recent_files.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RecentFiles(
      title: "تراکنش های اخیر",
      isShowTitle: false,
    );
  }
}
