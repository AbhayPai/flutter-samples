import 'package:flutter/material.dart';

// Custom packages
import 'package:flutter_app_counter/Pages/PageHome.dart';

void main() {
  runApp(
    MaterialApp(
      // referenced from https://api.flutter.dev/flutter/material/Scaffold/Scaffold.html
      home: PageHome()
    ),
  );
}
