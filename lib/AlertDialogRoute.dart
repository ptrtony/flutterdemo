import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class AlertDialogRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AlertDialogState();
}

class AlertDialogState extends State<AlertDialogRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("对话框"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: RaisedButton(
                child: Text("对话框1"),
                onPressed: () async {
                  bool delete = await showDeleteConfirmDialog1();
                  if (delete == null) {
                    print("取消删除");
                  } else {
                    print("确认删除");
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: RaisedButton(
                  child: Text("对话框2"),
                  onPressed: () {
                    changeLanguage();
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: RaisedButton(
                  child: Text("对话框3"), onPressed: () => showListDialog()),
            )
          ],
        ),
      ),
    );
  }

  Future<bool> showDeleteConfirmDialog1() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Text("您确定要删除当前文件吗?"),
            actions: <Widget>[
              RaisedButton(
                  child: Text("取消"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                child: Text("删除"),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              )
            ],
          );
        });
  }

  Future<void> changeLanguage() async {
    int i = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("请选择语言"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("英语"),
                onPressed: () {
                  Navigator.pop(context, 1);
                },
              ),
              SimpleDialogOption(
                child: Text("汉语"),
                // ignore: missing_return
                onPressed: () {
                  Navigator.pop(context, 2);
                },
              )
            ],
            // ignore: missing_return
          );
        });

    if (i != null) {
      print((i == 1) ? "英语" : "汉语");
    }
  }

  Future<void> showListDialog() async {
    int index = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          var dialog = new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("请选择"),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text("$index"),
                      onTap: () => Navigator.pop(context, index),
                    );
                  },
                  itemCount: 20,
                  itemExtent: 50,
                ),
              )
            ],
          );

          return Dialog(
            child: dialog,
          );
        });

    print("点击了index=$index");
  }
}
