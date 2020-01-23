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
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, right: 8.0),
      child: Column(
        children: <Widget>[
          Card(
              child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Row(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                Text(
                  "Child 1",
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  "Child 2",
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  "Child 3",
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Card(
                child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Text(
                    "Child 1",
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    "Child 2",
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    "Child 3",
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
