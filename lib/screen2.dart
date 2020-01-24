import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _MyStatefulWidgetsState createState() => _MyStatefulWidgetsState();
}

class _MyStatefulWidgetsState extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        actions: <Widget>[

          IconButton(
            icon: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          IconButton(
            icon: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  print("icon arrow_forward");
                  Navigator.pushNamed(context, '/screen3');
                }),
          )
        ],
      ),
    );
  }
}
