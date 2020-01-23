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
      padding: const EdgeInsets.only(top: 40.0,left: 8.0),
      child: Column(
        children: <Widget>[
          Text("Col.1",textDirection: TextDirection.ltr,),
          Text("Col.2",textDirection: TextDirection.ltr,),
          Text("Col.3",textDirection: TextDirection.ltr,),
          Row(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Text("Row 1", textDirection: TextDirection.ltr,),
              Text("Row 2", textDirection: TextDirection.ltr,),
              Text("Row 3", textDirection: TextDirection.ltr,),
            ],
          )
        ],
      ),
    );
  }
}
