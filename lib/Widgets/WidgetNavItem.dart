import 'package:flutter/material.dart';

class WidgetNavItem extends StatelessWidget {
  final String title;
  final Widget page;

  WidgetNavItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page
          )
        )
      },
    );
  }
}
