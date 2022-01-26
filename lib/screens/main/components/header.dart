import 'package:admin/controllers/MenuController.dart';
import 'package:admin/controllers/main/HeaderController.dart';
import 'package:admin/controllers/main/MainScreenController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainScreenContorller>();

    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: context.read<MenuController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Obx(() {
            return Text(
              controller.screenTitle.value,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.apply(fontFamily: 'IranYekan', color: textColor),
            );
          }),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        //Expanded(child: SearchField()),
        ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      tooltip: "",
      color: Colors.white,
      itemBuilder: (context) => <PopupMenuEntry<int>>[
        PopupMenuItem(
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              "ویرایش پروفایل",
              style: TextStyle(
                fontSize: 13,
                fontFamily: "IranYekan",
              ),
            ),
          ),
          value: 0,
        ),
        PopupMenuItem(
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              "خروج از حساب کاربری",
              style: TextStyle(fontSize: 13, fontFamily: "IranYekan"),
              textAlign: TextAlign.right,
            ),
          ),
          value: 0,
        ),
      ],
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding / 2,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(3)),
          border: Border.all(color: Color(0xeef1f5)),
        ),
        child: Row(
          children: [
            if (!Responsive.isMobile(context))
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: Text(
                  "صادق بخشنده",
                  style: TextStyle(fontFamily: "IranYekan"),
                ),
              ),
            Icon(
              Icons.keyboard_arrow_down,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
