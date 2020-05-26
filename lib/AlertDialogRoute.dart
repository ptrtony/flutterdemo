import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudydemo/DialogCheckbox.dart';

class AlertDialogRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AlertDialogState();
}

class AlertDialogState extends State<AlertDialogRoute> {
  bool _isFirstCheck = false;

  Widget _buildMaterialDialogTranslations(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return ScaleTransition(
      scale: CurvedAnimation(parent: animation, curve: Curves.ease),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("对话框"),
      ),
      body: SingleChildScrollView(
        child: Center(
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    child: Text("对话框4"),
                    onPressed: () async {
                      String printStr = await showInitCustomDialog();
                      print(printStr);
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                    child: Text("对话框5"),
                    onPressed: () async {
                      bool isChecked = await showCheckboxDialog();
                      if (isChecked != null && isChecked) {
                        print("删除文件");
                      } else {
                        print("取消删除文件");
                      }
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                    child: Text("对话框6"),
                    onPressed: () async {
                      bool isChecked = await showCheckboxDialog();
                      if (isChecked != null && isChecked) {
                        print("删除文件");
                      } else {
                        print("取消删除文件");
                      }
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                    child: Text("对话框7"),
                    onPressed: () async {
                      int index = await _showModalBottomSheet();
                      print("$index");
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                    child: Text("对话框8"),
                    onPressed: ()  {
                      showLoadingDialog();
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                    child: Text("对话框9"),
                    onPressed: ()  {
                      _showDatePicker1();
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                    child: Text("对话框10"),
                    onPressed: ()  {
                      _showDatePicker2();
                    }),
              )
            ],
          ),
        ),
      )
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

  Future<T> showCustomDialog<T>({@required BuildContext context,
    bool barrierDismissible = true,
    WidgetBuilder builder}) {
    final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
    return showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        final Widget pageChild = Builder(builder: builder);
        return SafeArea(
          child: Builder(builder: (BuildContext context) {
            return theme != null
                ? Theme(data: theme, child: pageChild)
                : pageChild;
          }),
        );
      },
      barrierDismissible: barrierDismissible,
      barrierLabel: MaterialLocalizations
          .of(context)
          .modalBarrierDismissLabel,
      barrierColor: Colors.black87,
      transitionDuration: const Duration(milliseconds: 150),
      transitionBuilder: _buildMaterialDialogTranslations,
    );
  }

  Future<String> showInitCustomDialog() {
    return showCustomDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("标题"),
            content: Text("确定要删除吗"),
            actions: <Widget>[
              RaisedButton(
                  child: Text(
                    "取消",
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    Navigator.pop(context, "取消删除");
                  }),
              RaisedButton(
                  child: Text(
                    "确认",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.pop(context, "确认删除");
                  })
            ],
          );
        });
  }

  Future<bool> showCheckboxDialog() {
    _isFirstCheck = false;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "标题",
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "你确认要删除当前文件吗？",
                  style: TextStyle(color: Colors.black, fontSize: 14.0),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "同时删除子目录?",
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),

                    DialogCheckbox(onChange: (bool value){
                      _isFirstCheck = !_isFirstCheck;
                    },value: _isFirstCheck,)
                  ],
                )
              ],
            ),
            actions: <Widget>[
              RaisedButton(
                  child: Text(
                    "取消",
                    style: TextStyle(fontSize: 12.0, color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text(
                    "删除",
                    style: TextStyle(fontSize: 12.0, color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.pop(context, _isFirstCheck);
                  })
            ],
          );
        });
  }

  Future<bool> showDeleteConfirmDialog4() {
    bool _withTree = false;
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("您确定要删除当前文件吗?"),
              Row(
                children: <Widget>[
                  Text("同时删除子目录？"),
                  Checkbox( // 依然使用Checkbox组件
                    value: _withTree,
                    onChanged: (bool value) {
                      // 此时context为对话框UI的根Element，我们
                      // 直接将对话框UI对应的Element标记为dirty
                      (context as Element).markNeedsBuild();
                      _withTree = !_withTree;
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text("删除"),
              onPressed: () {
                // 执行删除操作
                Navigator.of(context).pop(_withTree);
              },
            ),
          ],
        );
      },
    );
  }

  // 弹出底部菜单列表模态对话框
  Future<int> _showModalBottomSheet() {
    return showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("$index"),
              onTap: () => Navigator.of(context).pop(index),
            );
          },
        );
      },
    );
  }

  showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, //点击遮罩不关闭对话框
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Text("正在加载，请稍后..."),
              )
            ],
          ),
        );
      },
    );
  }

  Future<DateTime> _showDatePicker1() {
    var date = DateTime.now();
    return showDatePicker(
      context: context,
      initialDate: date,
      firstDate: date,
      lastDate: date.add( //未来30天可选
        Duration(days: 30),
      ),
    );
  }

  Future<DateTime> _showDatePicker2() {
    var date = DateTime.now();
    return showCupertinoModalPopup(
      context: context,
      builder: (ctx) {
        return SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            minimumDate: date,
            maximumDate: date.add(
              Duration(days: 30),
            ),
            maximumYear: date.year + 1,
            onDateTimeChanged: (DateTime value) {
              print(value);
            },
          ),
        );
      },
    );
  }

}
