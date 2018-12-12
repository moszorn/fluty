import 'package:flutter/material.dart';


import 'src/ctrl/directionality.dart';
import 'src/ctrl/default_text_style.dart';
//import 'src/ctrl/custom_paint.dart';
import 'src/ctrl/clip_rrect.dart';
import 'src/ctrl/physical_model.dart';
import 'src/ctrl/transform.dart';
import 'src/grid_view.dart';
import 'src/list_view.dart';
import 'src/stack.dart';

import 'src/card.dart';


//import 'src/ctrl/';
//import 'src/ctrl/';
//import 'src/ctrl/';
//import 'src/ctrl/';
//import 'src/ctrl/';
//import 'src/ctrl/';





void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
