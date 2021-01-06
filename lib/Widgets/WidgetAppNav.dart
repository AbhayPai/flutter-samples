import 'package:flutter/material.dart';

// Custom packages
import 'package:flutter_app_counter/Pages/PageHome.dart';
import 'package:flutter_app_counter/Pages/PageAbout.dart';
import 'package:flutter_app_counter/Pages/PageCounter.dart';

class WidgetAppNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          ListTile(
            title: Text('Home'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageHome()
                )
              )
            },
          ),
          ListTile(
            title: Text('About'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PageAbout()
                )
              )
            },
          ),
          ListTile(
            title: Text('Counter'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageCounter(),
                )
              )
            },
          ),
        ],
      ),
    );
  }
}
