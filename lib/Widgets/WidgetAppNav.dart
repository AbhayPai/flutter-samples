import 'package:flutter/material.dart';

// Custom packages
import 'package:flutter_app_counter/Pages/PageHome.dart';
import 'package:flutter_app_counter/Pages/PageAbout.dart';
import 'package:flutter_app_counter/Pages/PageCounter.dart';
import 'package:flutter_app_counter/Widgets/WidgetNavItem.dart';

// ignore: must_be_immutable
class WidgetAppNav extends StatelessWidget {
  List<WidgetNavItem> navItems = [
    WidgetNavItem(
      title: 'Home',
      page: PageHome(),
    ),
    WidgetNavItem(
      title: 'About',
      page: PageAbout(),
    ),
    WidgetNavItem(
      title: 'Counter',
      page: PageCounter(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 30.0),
        children: navItems.map((menuItem) => menuItem).toList(),
      ),
    );
  }
}
