import 'package:flutter/material.dart';

void main() {
  runApp(MyStatefulWidgets());
}

class MyStatefulWidgets extends StatefulWidget {
  @override
  _MyStatefulWidgetsState createState() => _MyStatefulWidgetsState();
}

class _MyStatefulWidgetsState extends State<MyStatefulWidgets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.red,
        child: Center(
          child: RaisedButton(
            child: Text("click", textDirection: TextDirection.ltr),
            onPressed: () {
              print("Hi from MyStatefulWidget");
            },
          ),
        ),
      ),
    );
  }
}
