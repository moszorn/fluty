import 'package:flutter/material.dart';

/*
在CSS中有background-position和background-size兩個屬性控制背景圖如何平鋪，
例如：如果背景圖比元素尺寸大或者小的時候，是否要進行拉伸，如果要拉伸，是拉伸圖片寬度還是拉伸圖片高度來適應等等。
而FittedBox所做的事情也是差不多，它有兩個很重要的參數：aligment 和 fit。

fit可取值： (基本這個跟CSS的background-size取值都一樣的。)

  BoxFit.fill
  BoxFit.contain
  BoxFit.cover
  BoxFit.fitWidth
  BoxFit.fitHeight

aligment則是控制，當子元素大小沒有完全佔滿父元素的時候，如何定位，是居中還是靠左靠右。
 */
Widget buildBoxFit(){
   return new Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: new Container(
        width: 200.0,
        height: 100.0,
        color: Colors.black,
        /*
        紅盒子大小是比黑盒子大的，但是fit為BoxFit.fitHeight就會通過拉伸高度來適應黑盒子，
        
        試著把fit屬性改成BoxFit.fitWidth，效果就會不一樣的：
         */
          child:  FittedBox(
            fit: BoxFit.fitHeight,
            alignment: Alignment.bottomRight,
            child: new Container(
              color: Colors.red,
              width: 300.0,
              height: 240.0,
              alignment: Alignment.center,
              child: new Text('AAA'),
            ),
          )
      )
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