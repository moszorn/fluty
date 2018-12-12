import 'package:flutter/material.dart';


/*
ListView是一個類似列的widget，它的內容對於其渲染框太長時會自動提供滾動。

ListView 摘要:
  用於組織盒子中列表的特殊Column
  可以水平或垂直放置
  檢測它的內容超過顯示框時提供滾動
  比Column配置少，但更易於使用並支持滾動
 */

Widget buildListView(){
  return Center( 
    child: ListView(
     children: _buildListTiles(100),
    ),
  );
}


List<Widget> _buildListTiles(int count) {

final img = Image.network(
            'https://cdn-images-1.medium.com/max/1600/1*in7MRIAKfRn-qDgJKc9XVw.jpeg',
            height: 200,
            width: 200,
            scale: 0.5,
            );

 return List.generate(count, (i){
    return ListTile( 
      title: Text('this is title on Tile $i', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
     // title: img,
      subtitle: Text('this is subtitle on Tile $i'),
      leading: Icon(Icons.theaters, color: Colors.blue[500]),
    );
  });
}
/*
Image.network(
            'https://cdn-images-1.medium.com/max/1600/1*in7MRIAKfRn-qDgJKc9XVw.jpeg',
            height: 200,
            width: 200,
            scale: 0.5,
            )
 */