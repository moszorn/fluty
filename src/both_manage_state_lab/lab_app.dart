import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class LabApp extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: "Parent & Child ownself State management",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        " State Management",
        style: TextStyle(color: Colors.brown, fontSize: 25, fontStyle: FontStyle.italic),
      )),
      body: ParentWidget(),
    );
  }
}

class ParentWidget extends StatefulWidget{
  @override
  State createState()=> ParentState();
}

class ParentState extends State<ParentWidget>{

  bool _active = false;
  void _handleTapboxChanged(bool newValue){
    setState(() {
          _active = newValue;
        });
  }


  @override
  Widget build(BuildContext ctx){
    return Container( 
      child: ChildWidget( 
        active: _active,
        onChanged: _handleTapboxChanged
      ),
    );
  }
}

class ChildWidget extends StatefulWidget{

  final bool active;
  final ValueChanged<bool> onChanged;
  
  ChildWidget({this.active: false, @required this.onChanged, Key key}): super(key:key);

  @override
  State createState()=> ChildeState();
}

/*
ChildeWidget 管理_highlight state.
GestureDetector監聽所有tap事件。當用戶點下時，它添加高亮（深綠色邊框）；當用戶釋放時，會移除高亮。
當按下、抬起、或者取消點擊時更新_highlight狀態，調用setState()更新UI。
當點擊時，將狀態的改變傳遞給父widget.
 */
class ChildeState extends State<ChildWidget> {

  bool _highlight = false;

  void _handleTapDown(TapDownDetails details){
    setState((){
       _highlight = true;
    });
  }
  void _handleTapUp(TapUpDetails details){
    setState((){
      _highlight = false;
    });
  }
  void _handleTapCancel(){
    setState((){
      _highlight = false;
    });
  }
 void _handleTap(){
   widget.onChanged(!widget.active);
 }

  @override
  Widget build(BuildContext ctx){
    //  adds a green border on tap down. On tap up, the square changes to the opposite state.
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: Container( 
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration( 
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight ? Border.all(color: Colors.yellow[700], width: 10.0) : null
        ),
      )
    );
  }
}
