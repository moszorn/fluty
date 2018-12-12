import 'package:flutter/material.dart';


/*

Card將其大小縮小為0像素。您可以使用SizedBox來限制Card的大小。

 Card 摘要:
  ＊ 實現了一個 Material Design card
  ＊ 接受單個child，但該child可以是Row，Column或其他包含子級列表的widget
  ＊ 顯示圓角和陰影
  ＊ Card內容不能滾動
  ＊ Material Components 庫的一個widget

 */
Widget buildCard(){
  return SizedBox( 
    height: 210.0,
    child: _buildCard()
  );
}


Widget _buildCard(){
  return SizedBox(
      height: 210.0,
      child:  Card(
        child:  Column(
          children: [
             ListTile(
              title:  Text('1625 Main Street',
                  style:  TextStyle(fontWeight: FontWeight.w500)),
              subtitle:  Text('My City, CA 99984'),
              leading:  Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
             Divider(),
             ListTile(
              title:  Text('(408) 555-1212',
                  style:  TextStyle(fontWeight: FontWeight.w500)),
              leading:  Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
             ListTile(
              title:  Text('costa@example.com'),
              leading:  Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
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