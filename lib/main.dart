import 'package:flutter/material.dart';

import '_particial/text/MyText.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Column dan row"),
        ),
        body: Column(
          //mainkan disini
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText("Text 1"),
            MyText("Text 2"),
            MyText("Text 3"),
            Row(
              children: [
                MyText("Text 4"),
                MyText("Text 5"),
                MyText("Text 6"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
