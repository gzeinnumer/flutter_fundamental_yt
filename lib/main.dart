import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan TextStyle"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Latihan TextStyle",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: "Volaroid",
                  fontSize: 20,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.red,
                  decorationThickness: 5
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
