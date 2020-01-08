import 'package:flutter/material.dart';
import 'contacts_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var stack = new Stack(
    alignment: const Alignment(0.1, 0.7),
    children: <Widget>[
      new CircleAvatar(
        backgroundImage: new AssetImage('images/jywy.jpeg'),
        radius: 100.0,
      ),
      new Container(
        decoration: new BoxDecoration(
          color: Colors.black45,
        ),
        child: new Text(
          'Wang Mia',
          style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      )
    ],
  );



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue[33],
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: stack,
      ),
    );
  }
}
