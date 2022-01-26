import 'package:admin/controllers/main/MainScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dashboard/components/recent_files.dart';

class TransactionScreen extends StatelessWidget {
  final controller = Get.find<MainScreenContorller>();

  @override
  Widget build(BuildContext context) {
    return RecentFiles(
      title: "لیست تراکنش ها",
      isShowTitle: false,
    );
  }
}
