import 'package:flutter/material.dart';


import './ctrl/directionality.dart';
import './ctrl/default_text_style.dart';
//import './ctrl/custom_paint.dart';
import './ctrl/clip_rrect.dart';
import './ctrl/physical_model.dart';
import './ctrl/transform.dart';
import './grid_view.dart';
import './list_view.dart';
import './stack.dart';

import './card.dart';


//import './ctrl/';
//import './ctrl/';
//import './ctrl/';
//import './ctrl/';
//import './ctrl/';
//import './ctrl/';


class SrcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: buildCard()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
