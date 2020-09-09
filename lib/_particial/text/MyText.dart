import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String title;

  MyText(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            Text(this.title)
          ],
        ),
      ),
    );
  }
}