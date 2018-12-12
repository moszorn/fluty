import 'package:flutter/material.dart';

Widget buildPhysicalModel(){
  return Container(
      color: Colors.white,
      child:  Align(
        alignment: Alignment.center,
        child:  PhysicalModel(
          color: Colors.black,
          shadowColor: Colors.pink,
          elevation: 16.0,
          child:  Image.network(
            'https://cdn-images-1.medium.com/max/1600/1*in7MRIAKfRn-qDgJKc9XVw.jpeg',
            height: 200,
            width: 200,
            scale: 0.5,
            ),
        ),
      ),
    );
}