import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/factor/factor_screen.dart';
import 'package:admin/screens/transaction/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controllers/main/MainScreenController.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainScreenContorller>();

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 50,
                  height: 50,
                ),
                SizedBox(height: defaultPadding),
                Text("Solar Panel")
              ],
            ),
          ),
          DrawerListTile(
            title: "میزکار",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              controller.screenTitle.value = "میزکار";
              controller.screenWidget.value = DashboardScreen();
            },
          ),
          DrawerListTile(
            title: "تراکنش ها",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              controller.screenTitle.value = "لیست تراکنش ها";
              controller.screenWidget.value = new TransactionScreen();
            },
          ),
          DrawerListTile(
            title: "فاکتورها",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              controller.screenTitle.value = "فاکتورها";
              controller.screenWidget.value = new FactorScreen();
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: textColor,
        height: 16,
      ),
      title: Text(
        title,
        style:
            TextStyle(color: textColor, fontFamily: "IranYekan", fontSize: 13),
      ),
    );
  }
}
