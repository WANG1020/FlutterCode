import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Widget titleSection = new Container(
    padding: const EdgeInsets.all(32.0),
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'This is Demo',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Hello,Good morning',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
        ),
        new Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        new Text('41'),
      ],
    ),
  );

  BuildContext _context;

  Column buildButtonColumn(IconData icon,String label) {
    Color color = Theme.of(_context).primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(
          icon,
          color: color,
        ),
        new Container(
//          margin: ,
        ),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    _context = context;
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
          ],
        ),
      ),
    );
  }
}