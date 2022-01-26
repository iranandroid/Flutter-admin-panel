import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderController extends GetxController {
  getPopupMenuList() {
    List<PopupMenuEntry<int>> popupMenuItem = [];

    popupMenuItem.add(createPopupMenu('ویرایش پروفایل', 0, true));
    popupMenuItem.add(createPopupMenu('خروج از حساب کاربری', 1, true));

    return popupMenuItem;
  }

  createPopupMenu(String title, int value, bool enable) {
    return PopupMenuItem(
      child: Text(
        title,
        style: TextStyle(fontSize: 13),
      ),
      value: value,
      enabled: enable,
    );
  }
}
