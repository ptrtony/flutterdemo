

import 'package:flutter/cupertino.dart';
import 'package:flutterstudydemo/car/InheritedProvider.dart';

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget{

  ChangeNotifierProvider({Key key, this.data,this.child});

  final T data;
  final Widget child;


  //定义一个便捷方法，方便子树中的widget获取共享数据
  static T of<T>(BuildContext context,{bool listen = true}){
    final type = _typeOf<InheritedProvider<T>>();
    final provider =listen? context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>():
    context.getElementForInheritedWidgetOfExactType<InheritedProvider<T>>()?.widget
    as InheritedProvider<T>;
    return provider.data;
  }
  @override
  State<StatefulWidget> createState() => _ChangeNotifierProviderState<T>();

}

class _typeOf<T extends InheritedWidget> {
}



class _ChangeNotifierProviderState<T extends ChangeNotifier> extends State<ChangeNotifierProvider<T>>{

  void update(){
    //如果数据发生变化（model类调用了notifyListeners），重新构建InheritedProvider
    setState(() {

    });
  }

  @override
  void didUpdateWidget(ChangeNotifierProvider<T> oldWidget) {
    // TODO: implement didUpdateWidget
    if(widget.data != oldWidget.data){
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    // TODO: implement initState
    widget.data.addListener(update);
    super.initState();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    widget.data.removeListener(update);
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return InheritedProvider<T>(data:widget.data, child:widget.child);
  }

}
