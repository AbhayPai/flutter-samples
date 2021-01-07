import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// Custom packages
import 'package:flutter_app_counter/Pages/PageCounter.dart';
import 'package:flutter_app_counter/Widgets/WidgetAppScaffold.dart';
import 'package:flutter_app_counter/Configurations/ConfigurationApp.dart';

class StateCounter extends State<PageCounter> {
  final ConfigurationApp configApp = new ConfigurationApp();

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return WidgetAppScaffold(
      content: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/appBgImage.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Divider(
                    height: 30.0,
                    color: Colors.black,
                  ),
                  Flexible(
                    flex: 1,
                    child: RaisedButton(
                      child: Text(
                        configApp.getCounterMessage(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
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
                ],
              ),
            ),
          ],
        ),
      ),
      contentFloating: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FloatingActionButton(
              child: Icon(
                Icons.add,
              ),
              heroTag: "incrementCounter",
              backgroundColor: Colors.green,
              onPressed: incrementCounter,
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              disabledColor: Colors.black,
              child: Text(
                "Counter: $counter",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FloatingActionButton(
              child: Icon(
                Icons.remove,
              ),
              heroTag: "decrementCounter",
              backgroundColor: Colors.red,
              onPressed: decrementCounter,
            ),
          ),
        ],
      ),
      contentFloatingLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // non returning function
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  // non returning function
  void decrementCounter() {
    setState(() {
      counter--;
    });
  }
}
