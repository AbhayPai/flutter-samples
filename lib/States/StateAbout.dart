import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// Custom packages
import 'package:flutter_app_counter/Pages/PageAbout.dart';
import 'package:flutter_app_counter/Templates/TemplateCardQuote.dart';
import 'package:flutter_app_counter/Widgets/WidgetAppScaffold.dart';
import 'package:flutter_app_counter/Configurations/ConfigurationApp.dart';

class StateAbout extends State<PageAbout> {
  final ConfigurationApp configApp = new ConfigurationApp();

  @override
  Widget build(BuildContext context) {
    return WidgetAppScaffold(
      content: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(configApp.getAppExtnlBgImage()),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Divider(
                  height: 30.0,
                  color: Colors.black,
                ),
                RaisedButton(
                  child: Text(
                    configApp.getAboutMessage(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                Divider(
                  height: 30.0,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TemplateCardQuote(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  'Abhay Pai',
                ),
                TemplateCardQuote(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  'Abhay Pai',
                ),
                TemplateCardQuote(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  'Abhay Pai',
                ),
                TemplateCardQuote(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  'Abhay Pai',
                ),
                TemplateCardQuote(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  'Abhay Pai',
                ),
                TemplateCardQuote(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  'Abhay Pai',
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
