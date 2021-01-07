import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget TemplateAppBar(String text) {
  return AppBar(
    title: Text(
      text,
    ),
    centerTitle: true,
    backgroundColor: Colors.blue,
  );
}
