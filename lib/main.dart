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
            title: Text("Latihan TextField Style"),
          ),
          body: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).orientation == Orientation.portrait)
        ? Column(children: generateContainer())
        : Row(children: generateContainer());
  }

  List<Widget> generateContainer() {
    return [
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.yellow,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.purple,
        width: 100,
        height: 100,
      ),
    ];
  }
}
