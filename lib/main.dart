import 'package:flutter/material.dart';

void main() {
  runApp(MyStatefulWidgets());
}

class MyStatefulWidgets extends StatefulWidget {
  @override
  _MyStatefulWidgetsState createState() => _MyStatefulWidgetsState();
}

class _MyStatefulWidgetsState extends State<MyStatefulWidgets> {
  var myColor = Colors.red;

  changeColor() {
    setState(() {
      print(myColor);
      if (myColor == Colors.blue) {
        myColor = Colors.red;
      } else {
        myColor = Colors.blue;
      }

      print(myColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: myColor,
        child: Center(
          child: RaisedButton(
            child: Text("click", textDirection: TextDirection.ltr),
            onPressed: () {
              print("Hi from MyStatefulWidget");
              changeColor();
            },
          ),
        ),
      ),
    );
  }
}
