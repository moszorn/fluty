import 'package:flutter/material.dart';

//Directionality 主要控制文字方向
Widget buildDirectionality() {
  return Column(children: [
    Container(
      width: 300,
      height: 100,
      color: Colors.pinkAccent,
      child: Text('AAAA'),
    ),
    SizedBox(
      height: 20,
    ),
    Container(
      width: 300,
      height: 100,
      color: Colors.pinkAccent,
      child: Directionality( 
        textDirection: TextDirection.rtl,
        child: Text('BBBB')
      ),
    )
  ]);
}
