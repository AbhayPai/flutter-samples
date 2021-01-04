import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// Custom packages
import 'package:flutter_app_counter/Pages/PageHome.dart';
import 'package:flutter_app_counter/Configurations/ConfigurationApp.dart';

class WidgetHome extends State<Home> {
  final ConfigurationApp config = new ConfigurationApp();

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            config.getAppTitle(),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: NetworkImage(getAppExtnlBgImage()),
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
                      child: Text(
                        config.getAppWelcomeMessage(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        "Counter is at $counter.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Divider(
                      height: 30.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FloatingActionButton(
                child: Icon(
                  Icons.add,
                ),
                backgroundColor: Colors.green,
                onPressed: incrementCounter,
              ),
            ),
            Expanded(
              flex: 1,
              child: FloatingActionButton(
                child: Icon(
                  Icons.remove,
                ),
                backgroundColor: Colors.red,
                onPressed: decrementCounter,
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
