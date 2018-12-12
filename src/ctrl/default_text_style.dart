import 'package:flutter/material.dart';



/*

TextStyle({
    this.inherit: true,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.debugLabel,
    String fontFamily,
    String package,
  })



Text相關的 DefaultTextStyle控件，提供了更多的控制選項：textAlign，softWrap，style和maxLines等，
都是控制整體：換行，文字居中和多行省略等，

Text相關的 style控件，提供都是文字自身樣式相關：字重，字體大小等


Directionality還是DefaultTextStyle都是InheritedWidget的子類，InheritedWidget實現了一個發佈/訂閱的模式，當子控件調用inheritFromWidgetOfExactType方法獲取父控件時，同時也把自己加入到InheritedWidget的訂閱者列表裡面，所以當InheritedWidget屬性改變的時候，就會調起子組件didChangeDependencies方法去通知子組件。
 */
Widget buildDefaultTextStyle(){
  return Container( 
    /*  所有 DefaultTextStyle包起來的 WidgetTree都會以 default text style顯示
       有點像是 CSS 中的繼承
     */
    child: DefaultTextStyle( 
        style: TextStyle( 
          fontSize: 14.0,
          color: Colors.black,
          decoration: TextDecoration.underline
        ),
    maxLines: 1 /*限定所有文字只能顯示1行*/,
    softWrap: false/*限定只能顯示1行,並且不折行 */,
    overflow: TextOverflow.ellipsis/*多的字元省略 */,
    child: Column( 
      children: <Widget>[
        Container( 
          color: Colors.yellowAccent,
          child: Text("kubectl create configmap appconfig --from-literal=foo=bar --from-literal=bar=baz --from-literal=one=two"),
        ),
        SizedBox(height: 20),
         Container( 
          color: Colors.lightGreen,
          child: Text('這是很長的字串,這是很長的字串,這是很長的字串,這是很長的字串,這是很長的字串,這是很長的字串,這是很長的字串,這是很長的字串'),
        )
      ],
    ),
    ),
  );
}