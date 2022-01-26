import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenContorller extends GetxController {
  final screenTitle = "میزکار".obs;
  final screenWidget = new Rx<Widget>(new DashboardScreen());
}
