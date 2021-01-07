import 'package:flutter/material.dart';

// Custom Packages
import 'package:flutter_app_counter/Widgets/WidgetAppNav.dart';
import 'package:flutter_app_counter/Configurations/ConfigurationApp.dart';
import 'package:flutter_app_counter/Templates/TemplateAppBar.dart';

class WidgetAppScaffold extends StatelessWidget {
  WidgetAppScaffold({
    this.content,
    this.contentFloating,
    this.contentFloatingLocation,
  });

  final Widget content;
  final Widget contentFloating;
  final FloatingActionButtonLocation contentFloatingLocation;

  final ConfigurationApp configApp = new ConfigurationApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: WidgetAppNav(),
      appBar: TemplateAppBar(configApp.getAppTitle()),
      body: content,
      floatingActionButton: contentFloating,
      floatingActionButtonLocation: contentFloatingLocation,
    );
  }
}
