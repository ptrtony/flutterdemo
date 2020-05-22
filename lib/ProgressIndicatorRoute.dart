import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 进度条
class ProgressIndicatorRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProgressIndicatorState();
}

class ProgressIndicatorState extends State<ProgressIndicatorRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("进度条"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 模糊进度条(会执行一个动画)
            LinearProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
            //进度条显示50%
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: 0.5,
              ),
            ),
            // 模糊进度条(会执行一个旋转动画)
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            ),
            // 进度条显示50%
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: 0.5,
              ),
            ),
            // 线性进度条高度指定为3
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: SizedBox(
                width: 3,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: SizedBox(
                width: 100.0,
                height: 100.0,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: SizedBox(
                width: 150,
                height: 100,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
