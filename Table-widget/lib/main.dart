import 'package:flutter/material.dart';

void main() {runApp(MyApp());}

class MyApp extends StatefulWidget {
  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text('Flutter Table Widget'),
          ),
          body: Center(
              child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(120.0),
                    border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1),
                    children: [
                      TableRow( children: [
                        Column(children:[Text('Titel 1', style: TextStyle(fontSize: 20.0))]),
                        Column(children:[Text('Titel 2', style: TextStyle(fontSize: 20.0))]),
                        Column(children:[Text('Titel 3', style: TextStyle(fontSize: 20.0))]),
                      ]),
                      TableRow( children: [
                        Column(children:[Text('Iets')]),
                        Column(children:[Text('Iets')]),
                        Column(children:[Text('Iets')]),
                      ]),
                      TableRow( children: [
                        Column(children:[Text('Nog iets')]),
                        Column(children:[Text('Nog iets')]),
                        Column(children:[Text('Nog iets')]),
                      ]),
                      TableRow( children: [
                        Column(children:[Text('Nog meer')]),
                        Column(children:[Text('Nog meer')]),
                        Column(children:[Text('Nog meer')]),
                      ]),
                    ],
                  ),
                ),
              ])
          )),
    );
  }
}
