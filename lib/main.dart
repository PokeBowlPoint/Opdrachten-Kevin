import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Meerdere windows met widgets',
    home: FirstRoute(),
  ));
}



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
