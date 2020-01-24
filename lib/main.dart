import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyStatefulWidgets(),
    theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.lime,
        brightness: Brightness.dark),
  ));
}

class MyStatefulWidgets extends StatefulWidget {
  @override
  _MyStatefulWidgetsState createState() => _MyStatefulWidgetsState();
}

class _MyStatefulWidgetsState extends State<MyStatefulWidgets> {
  List list = List();

  @override
  void initState() {
    super.initState();
    list.add("nr.1");
    list.add("nr.2");
    list.add("nr.3");
    list.add("nr.4");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ToDos"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: Key(index.toString()),
                child: ListTile(title: Text(list[index])),
              );
            }));
  }
}
