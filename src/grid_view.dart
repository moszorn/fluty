import 'package:flutter/material.dart';
/*
使用GridView將widget放置為二維列表。 GridView提供了兩個預製list，或者您可以構建自定義網格。當GridView檢測到其內容太長而不適合渲染框時，它會自動滾動。
  GridView特點：
    在網格中放置widget
    檢測列內容超過渲染框時自動提供滾動
    構建您自己的自定義grid，或使用一下提供的grid之一:
      GridView.count 允許您指定列數
      GridView.extent 允許您指定項的最大像素寬度

  注意: 在顯示二維列表時，重要的是單元格佔用哪一行和哪一列時， 應該使用Table或 DataTable。
 */
List<Widget> _buildGridTitleList(int count){
  return List<Container>.generate(count, (i)=> Container( width: 140,height: 140,color:Colors.blueGrey));
}


Widget buildGrieView(){
  return GridView.extent( 
    maxCrossAxisExtent: 100,
    padding: EdgeInsets.all(4.0),
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
    children:_buildGridTitleList(12)
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