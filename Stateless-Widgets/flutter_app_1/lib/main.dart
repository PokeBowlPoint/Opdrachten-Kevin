import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Meerdere windows met widgets',
    home: FirstRoute(),
  ));
}

class FieldeenValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Field een kan\' niet leeg zijn' : null;
  }
}

class FieldtweeValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Field twee kan\' niet leeg zijn' : null;
  }
}

String _fieldeen;
String _fieldtwee;

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Epic Home Screen',)


      ),
      body: Container(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Container(
                child: RaisedButton(
                  color: Colors.green,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text('Bekijk pagina 1'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                ),
              ),
              Container(
                child: RaisedButton(
                  color: Colors.red,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text('Bekijk pagina 2'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdRoute()),
                    );
                  },
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Field voor Unit Test'
                  ),
                  validator: FieldeenValidator.validate,
                  onSaved: (value) => _fieldeen = value,
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nog een field voor Unit Test'
                  ),
                  validator: FieldtweeValidator.validate,
                  onSaved: (value) => _fieldtwee = value,
                ),
              )
            ],
          )
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Pagina 1"),
      ),
      body: Container(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Container(
                child: RaisedButton(
                  color: Colors.green,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ga terug naar home'),
                ),
              ),
            ],
          )
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Pagina 2"),
      ),
      body: Container(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Container(
                child: RaisedButton(
                  color: Colors.red,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ga naar home'),
                ),
              ),
            ],
          )
      ),
    );
  }
}
