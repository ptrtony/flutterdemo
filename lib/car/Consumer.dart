
// 这是一个便捷类，会获得当前context和指定数据类型的Provider
import 'package:flutter/cupertino.dart';
import 'package:flutterstudydemo/car/CardModel.dart';
import 'package:flutterstudydemo/car/ChangeNotifierProvider.dart';

class Consumer<T> extends StatelessWidget{

  Consumer({Key key,this.child,this.builder}):assert(builder != null),super(key:key);

  final Widget child;
  final Widget Function(BuildContext context,T data) builder;



  @override
  Widget build(BuildContext context) {
    return builder(context,ChangeNotifierProvider.of<T>(context));
  }


}