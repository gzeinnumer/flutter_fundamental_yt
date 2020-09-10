import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.green;
  Color targetColor;

  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
            AppBar(title: Text("Draggable, DragTarget, SizedBox, Material")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  child: MySizeBox(color1: color1),
                  childWhenDragging: MySizeBox(color1: Colors.black26),
                  feedback: MySizeBox(color1: color1.withOpacity(0.7)),
                ),
                Draggable<Color>(
                  data: color2,
                  child: MySizeBox(color1: color2),
                  childWhenDragging: MySizeBox(color1: Colors.black26),
                  feedback: MySizeBox(color1: color2.withOpacity(0.7)),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidates, rejected){
                return(isAccepted) ? MySizeBox(color1: targetColor) : MySizeBox(color1: Colors.black);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MySizeBox extends StatelessWidget {
  const MySizeBox({
    Key key,
    @required this.color1,
  }) : super(key: key);

  final Color color1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Material(
        color: color1,
        shape: StadiumBorder(),
        elevation: 3,
      ),
    );
  }
}
