import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Hello world"),
        ),
        body: Center(
            child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 100,
              child: Text(
                "Lagi mencoba flutter, bisa gak yaaaa",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
        ),
      ),
    );
  }
}
