import 'package:flutter/material.dart';


//類似CSS的border-radius屬性
Widget buildClipRRect(){
   return new Container(
      color: Colors.white,
      child: new Align(
        alignment: Alignment.center,
        //類似的可以剪切元素的還有ClipOval，ClipPath
        child: new ClipRRect(
          borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
          child: new Container(
            width: 180.0,
            height: 180.0,
            color: Colors.red,
          ),
        ),
      ),
    );
}