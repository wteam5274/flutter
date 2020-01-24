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

  String input = "";
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
          onPressed: () {
            showDialog(context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Add ToDo"),
                    content: TextField(
                      onChanged: (String value) {
                        input = value;
                      },
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("Add"),
                        onPressed: () {
                          setState(() {
                            list.add(input);
                          });
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                }
            );
          },
    ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: Key(list[index]),
                child: ListTile(title: Text(list[index])),
                onDismissed: (direction){
                  setState(() {
                    list.removeAt(index);
                  });
                },
              );
            }));
  }
}
