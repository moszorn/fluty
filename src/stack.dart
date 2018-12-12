import 'package:flutter/material.dart';


/*
使用Stack來組織需要重疊的widget。widget可以完全或部分重疊底部widget。 

Stack summary:
  . 用於與另一個widget重疊的widget
  . 子列表中的第一個widget是base widget; 隨後的子widget被覆蓋在基礎widget的頂部
  . Stack的內容不能滾動
  . 您可以選擇剪切超過渲染框的子項

 */
//底下範例: 使用Stack疊加Container（在半透明的黑色背景上顯示其文本），放置在Circle Avatar的頂部。Stack使用alignment屬性和調整文本偏移。
Widget buildStack(){
  
  
  final img = Image.network('https://flutterchina.club/tutorials/layout/images/stack-flutter-gallery.png',
  width: 200,
  height: 200,
  );
  
  return Stack( 
    alignment: Alignment(0.6, 0.6),
    children: <Widget>[
       new CircleAvatar(
          backgroundImage: new AssetImage('images/stack-flutter-gallery.png'),
          radius: 100.0,
        ),
        Container( 
          decoration: BoxDecoration( 
            color:Colors.black45,
          ),
          child: Text( 
            'Mia B',
            style: TextStyle( 
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        )
    ],
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