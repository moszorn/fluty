import 'package:flutter/material.dart';
import 'dart:math';

/*
類似於CSS的transform屬性，可以提供沿著X,Y或者Z軸旋轉，位移拉伸等效果。
 */
Widget buildTransform() {
  final img = Image.network(
    'https://cdn-images-1.medium.com/max/1600/1*in7MRIAKfRn-qDgJKc9XVw.jpeg',
    height: 200,
    width: 200,
    scale: 0.5,
  );

 return new Container(
      color: Colors.white,
      child:  Align(
        alignment: Alignment.center,
        child:  Transform(
          transform:  Matrix4.rotationZ(pi / 2),
          child:  Container(
            color: Colors.black,
            child: Text('垂直文字', style: const TextStyle(color: Colors.red),)
          )
        ),
      ),
    );
}


/*
Image.network(
            'https://cdn-images-1.medium.com/max/1600/1*in7MRIAKfRn-qDgJKc9XVw.jpeg',
            height: 200,
            width: 200,
            scale: 0.5,
            )
 */
