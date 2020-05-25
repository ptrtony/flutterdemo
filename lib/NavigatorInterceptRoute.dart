import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorInterceptRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NavigatorInterceptState();
}

class _NavigatorInterceptState extends State<NavigatorInterceptRoute>{

  DateTime _lastPressTime;//上次点击时间
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("导航返回拦截"),
        ),

      body:  WillPopScope(child: Container(alignment: Alignment.center,
        child: Text("1秒内连续按两次返回键退出"),
      ),
          
          onWillPop: () async{
        
          if(_lastPressTime == null || DateTime.now().difference(_lastPressTime)>Duration(seconds: 1)){
            _lastPressTime = DateTime.now();
            return false;
          }else{
            return true;
          }
      }),
    );
  }

}
