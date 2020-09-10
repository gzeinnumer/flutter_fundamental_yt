import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Image"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.red,
                  width: 130,
                  height: 130,
                  padding: EdgeInsets.all(5),
                  child: Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
                    ),
                    fit: BoxFit.none,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.red,
                  width: 130,
                  height: 130,
                  padding: EdgeInsets.all(5),
                  child: Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.red,
                  width: 130,
                  height: 130,
                  padding: EdgeInsets.all(5),
                  child: Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"
                    ),
                    fit: BoxFit.fill
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.red,
                  width: 130,
                  height: 130,
                  padding: EdgeInsets.all(5),
                  child: Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"
                    ),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.red,
                  width: 130,
                  height: 130,
                  padding: EdgeInsets.all(5),
                  child: Image(
                    image: AssetImage(
                        "images/example.jpg"
                    ),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
