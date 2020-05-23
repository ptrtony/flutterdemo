
import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfiniteListViewRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListViewRoute>{

  static const loadingTag =  "##loading##"; //表尾标记
  var _word = <String>[loadingTag];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _retriveData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("无限加载列表"),),
      body: ListView.separated(itemBuilder: (BuildContext context,int index){
        //如果到了表尾
        if(_word[index] == loadingTag){
          //不足100条，继续获取数据
          if(_word.length -1 < 100){
            //获取数据
            _retriveData();
            //加载时显示loading
            return Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child:CircularProgressIndicator(
                    strokeWidth: 2.0,
                  ),
                )
            );
          }else{
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16.0),
              child: Text("没有更多了～～～",style: TextStyle(color: Colors.grey),),
            );
          }
        }
        return ListTile(title: Text("${_word[index]}"),);
      }, separatorBuilder: (BuildContext context,int index){
          return Divider(height: .0,);
      }, itemCount: _word.length),
    );
  }

  void _retriveData() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        _word.insertAll(_word.length -1 ,generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      });
    }
    );
  }

}