import 'package:flutter/material.dart';

void main() {
  runApp(MyStatelessWidgets());
}

class MyStatelessWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.red,
        child: Center(
          child: Text("Hello From Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ));
  }
}
