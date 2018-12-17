## initState() ##

當Widget第一次插入到Widget樹時會被調用，對於每一個State物件，initState , Flutter framework只會執行一次，所以，通常在initState中做一些**一次性的操作**，如**狀態初始化**、**訂閱子樹的事件通知**等。不能在initState中去存取到BuildContext.inheritFromWidgetOfExactType（該方法用於在Widget樹上獲取離當前widget最近的一個父級InheritFromWidget，關於InheritedWidget），原因是在初始化完成後，Widget樹中的InheritFromWidget也可能會發生變化，所以正確的做法應該在在build（）方法或didChangeDependencies()中調用它。

___

## didChangeDependencies() ##

當State物件的依賴發生變化時會被調用；
   >例如：在之前build() 中包含了一個InheritedWidget，然後在之後的build() 中InheritedWidget發生了變化，那麼此時InheritedWidget的子widget的didChangeDependencies()回調都會被調用。

典型的場景是當系統語言Locale或應用主題(Theme)改變時，Flutter framework會通知widget調用此回調。
___

## build() ##

主要是用於構建Widget子樹的，會在如下場景被調用：
- 在執行initState() 後
- 在執行didUpdateWidget() 後
- 在執行setState() 後
- 在執行didChangeDependencies() 後
- 在State物件從樹中一個位置移除後（會調用deactivate）又重新插入到樹的其它位置之後。

___

## reassemble() ##

此回調是專門為了開發調試而提供的，在熱重載(hot reload)時會被調用，此回調在Release模式下永遠不會被調用。
___
## didUpdateWidget() ##

**在widget重新構建時，Flutter framework會調用Widget.canUpdate來檢測Widget樹中同一位置的新舊節點，然後決定是否需要更新**，如果Widget.canUpdate返回true則會調用此回調。Widget.canUpdate會在新舊widget的key和runtimeType同時相等時會返回true，也就是說在在新舊widget的key和runtimeType同時相等時didUpdateWidget()就會被調用。

        

___

## deactivate ##

當State物件從樹中被移除時，會調用此回調。在一些場景下，Flutter framework會將State物件重新插到樹中，**如包含此State物件的子樹在樹的一個位置移動到另一個位置時（可以通過GlobalKey來實現）。如果移除後沒有重新插入到樹中則緊接著會調用dispose()方法。**

     //Widget canUpdate (主要的作用是決定是否在下一次build時復用舊的widget，決定的條件在canUpdate()方法中。)
     
     static bool canUpdate(Widget oldWidget, Widget newWidget) {
        return oldWidget.runtimeType == newWidget.runtimeType && oldWidget.key == newWidget.key;
     }

___
## dispose() ##
當State物件從樹中被永久移除時調用；通常在此回調中釋放資源。

___



注意：在繼承StatefulWidget重寫其方法時，對於包含  @mustCallSuper 標註的父類方法，都要在子類方法中先調用父類方法。