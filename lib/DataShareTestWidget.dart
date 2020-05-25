

import 'package:flutter/cupertino.dart';
import 'package:flutterstudydemo/DataShareWidget.dart';

class DataShareTestWidget extends StatefulWidget{
  
  
  @override
  State<StatefulWidget> createState() => _DataShareTestState();
  
}

class _DataShareTestState extends State<DataShareTestWidget>{
  @override
  Widget build(BuildContext context) {
    return Text(DataShareWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print("Dependencies change");
  }
}