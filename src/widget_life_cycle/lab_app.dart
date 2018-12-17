import 'package:flutter/material.dart';



class Echo extends StatelessWidget {
  const Echo({
    Key key,  
    @required this.text,
    this.backgroundColor:Colors.grey,
  }):super(key:key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  final int initValue;
  CounterWidget({Key key, this.initValue}): super(key:key);

  @override 
  State createState()=> _CounterWidget();
}

class _CounterWidget extends State<CounterWidget> {
  int _counter;

  @override
  void initState(){
    print('initState');
    super.initState();
    //Widget 初始化於此
    _counter=widget.initValue;
  }
  @override
  Widget build(ctx){
    print('build');
    return Center( 
      child: FlatButton( 
        child: Text('$_counter'),
        //改變Widget狀態
        onPressed: ()=> setState(()=> ++_counter),
      )
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
      // TODO: implement didUpdateWidget
      super.didUpdateWidget(oldWidget);
      print('didUpdateWidget');
    }

  @override
  void deactivate(){
    super.deactivate();
    print('deactive');
  }

  @override
  void dispose(){
    super.dispose();
    print("dispose");
  }

   @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}


class LabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( appBar: AppBar(), body:CounterWidget(initValue: 0,),)
    );
  }
}