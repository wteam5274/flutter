import 'package:flutter/material.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyStatefulWidgets(),
    theme: ThemeData(
      primaryColor: Colors.red,
      accentColor: Colors.lime,
      brightness: Brightness.dark
    ),
    routes: <String, WidgetBuilder>{
      "/screen2": (BuildContext context) => Screen2(),
      "/screen3": (BuildContext context) => Screen3(),
    },
  ));
}

class MyStatefulWidgets extends StatefulWidget {
  @override
  _MyStatefulWidgetsState createState() => _MyStatefulWidgetsState();
}

class _MyStatefulWidgetsState extends State<MyStatefulWidgets> {
  bool checkInput = false;
  int gender = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Routing"),
        actions: <Widget>[
          IconButton(
            icon: IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {
              print("icon arrow_forward");
              Navigator.pushNamed(context, '/screen2');
            }),
          ),
        ],
      ),
    );

  }











}
