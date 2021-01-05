import 'package:flutter/material.dart';

class WidgetAppBar {
  Widget defaultAppBar(String text) {
    return AppBar(
      title: Text(
        text,
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }
}
