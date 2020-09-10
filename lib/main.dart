import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController c
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.blueAccent,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.adb, "Text1"),
              buildCard(Icons.account_box, "Text2"),
              buildCard(Icons.repeat, "Text3"),
              buildCard(Icons.exit_to_app, "Text4"),
              buildCard(Icons.add, "Text5"),
              buildCard(Icons.ac_unit, "Text6"),
              buildCard(Icons.accessibility_new, "Text7"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(iconData),
          ),
          Text(text)
        ],
      ),
    );
  }
}