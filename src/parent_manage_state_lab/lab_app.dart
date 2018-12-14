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

class HomePage extends StatelessWidget {
 
 @override
 Widget build(BuildContext ctx) {
   return MaterialApp(
     title: 'Parent manage child`s state',
     home: ParentWidget()
   );
 }
}

class ParentWidget extends StatefulWidget {
   @override
   State createState()=> _ParentState();
}

class _ParentState extends State<ParentWidget> {
  
 bool _child_active = false;
 void _child_toggle(bool newValue)=> setState(()=> _child_active = newValue);

  @override
  Widget build(BuildContext ctx){
    return Container( 
      width: 100.0,
      height: 100.0,
       decoration: BoxDecoration(
          color: _child_active ? Colors.lightGreen[700] : Colors.grey[600],
          border: Border.all(
              width: 10, style: BorderStyle.solid, color: Colors.blue)),
  
      child: ChildWidget( 
        active: _child_active,
        onChanged: _child_toggle
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  
  final bool active;
  final ValueChanged<bool> onChanged;

  ChildWidget({Key key, this.active: false, @required this.onChanged}):super(key:key);

  void _handleToggle(){
    onChanged(!active);
  }

  @override
  Widget build(BuildContext ctx){
    return Center( 
      child:GestureDetector(
          onTap: _handleToggle,
          child: Text(active ? '按下關閉' : '按下開啟',
              style: TextStyle(fontSize: 15.0, color: Colors.white)),         
        ),
    );
  }
}






