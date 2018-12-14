import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class LabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'child widget manage self state',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  State createState() => _WidgetManageSelfState();
}

class _WidgetManageSelfState extends State<HomePage> {
  bool _active = false;

  void _handleTap() {
    setState(() => _active = !_active);
  }


   @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
          border: Border.all(
              width: 10, style: BorderStyle.solid, color: Colors.blue)),
      child: Center(
        child: GestureDetector(
          onTap: _handleTap,
          child: Text(_active ? 'Press to Inactive' : 'Press to Active',
              style: TextStyle(fontSize: 15.0, color: Colors.white)),         
        ),
      ),
    );
  }
}
