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
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                maxLength: 20,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  icon: Icon(Icons.adb),
                  prefix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  //1
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  prefixStyle: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600,
                  ),
                  labelText: "labelText",
                  labelStyle: TextStyle(
                    color: Colors.blueAccent,
                  ),
                  hintText: "hintText",
                  hintStyle: TextStyle(
                    fontSize: 12,
                  ),
                  suffix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  //1
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              TextField(
                maxLength: 20,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  icon: Icon(Icons.adb),
                  prefixText: "prefixText : ",
                  //2 //pilih salah satu
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  prefixStyle: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600,
                  ),
                  labelText: "labelText",
                  labelStyle: TextStyle(
                    color: Colors.blueAccent,
                  ),
                  hintText: "hintText",
                  hintStyle: TextStyle(
                    fontSize: 12,
                  ),
                  suffixText: "suffixText : ",
                  //2 //pilih salah satu
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
