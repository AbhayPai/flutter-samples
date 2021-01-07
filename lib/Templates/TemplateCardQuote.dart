import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget TemplateCardQuote(String quote, String author) {
  return Card(
    margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '- $author',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    ),
  );
}
