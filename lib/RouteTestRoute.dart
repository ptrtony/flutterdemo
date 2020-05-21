
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudydemo/TipRouter.dart';

class RouteTestRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        onPressed: () async{
          var result = await Navigator.push(context,
            MaterialPageRoute(
              builder: (context){
                return TipRouter(text:"我是提示xxx");
              }
            )
          );
          print("路由返回值: $result");
        },

        child: Text("打开提示页"),
      ),
    );
  }


}