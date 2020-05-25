

import 'package:flutter/cupertino.dart';

class DataShareWidget extends InheritedWidget{

  DataShareWidget({@required this.data,Widget child}):super(child:child);

  final int data;

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static DataShareWidget of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<DataShareWidget>();
  }

  @override
  bool updateShouldNotify(DataShareWidget oldWidget) {
    return oldWidget.data != data;
  }
}