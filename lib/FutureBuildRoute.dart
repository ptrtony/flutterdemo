

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuildRoute extends StatelessWidget{


  Future<String> mockNetworkData() async{
    return Future.delayed(Duration(seconds: 2),()=>"我是从互联网上获取的数据");
  }

  Stream<int> counter(){
    return Stream.periodic(Duration(seconds: 1),(i){
      return i;
    });
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("异步ui更新"),
        ),
        body:Center(child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
                future: mockNetworkData(),
                builder: (BuildContext context,AsyncSnapshot snapshot){
                  if(snapshot.connectionState == ConnectionState.done){
                    if(snapshot.hasError){
                      return Text("Error:${snapshot.error}");
                    }else{
                      return Text("data:${snapshot.data}");
                    }
                  }else{
                    return CircularProgressIndicator();
                  }
                }),

            StreamBuilder(
                stream: counter(),
                builder: (BuildContext context, AsyncSnapshot snapshot){
                if(snapshot.hasError){
                  return Text("Error:${snapshot.error}");
                }
                switch(snapshot.connectionState){
                  case ConnectionState.none:
                    return Text("没有stream");
                    break;
                  case ConnectionState.active:
                    return Text("计时:${snapshot.data}");
                    break;
                  case ConnectionState.waiting:
                    return CircularProgressIndicator();
                    break;
                  case ConnectionState.done:
                    return Text("结束");
                    break;
                }
                return null;
            })
          ],
        ),)
      );
  }


  
}