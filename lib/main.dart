import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyStatefulWidgets(),
    theme: ThemeData(
      primaryColor: Colors.red,
      accentColor: Colors.lime,
      brightness: Brightness.dark
    ),
  ));
}

class MyStatefulWidgets extends StatefulWidget {
  @override
  _MyStatefulWidgetsState createState() => _MyStatefulWidgetsState();
}

class _MyStatefulWidgetsState extends State<MyStatefulWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Beginner",textDirection: TextDirection.ltr,),
        actions: <Widget>[
          IconButton(
            icon: IconButton(icon: Icon(Icons.beenhere), onPressed: () {
              print("icon beenhere");
            }),
          ),
          IconButton(
            icon: IconButton(icon: Icon(Icons.map), onPressed: () {
              print("icon map");
            }),
          )
        ],
      ),
    );

  }











}
