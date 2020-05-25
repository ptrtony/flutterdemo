import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudydemo/NavBar.dart';

class ColorAndThemeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeTestRoute();
  }
}

class ThemeTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ThemeTestState();
}

class ThemeTestState extends State<ThemeTestRoute> {
  Color _themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Theme(
      data: ThemeData(
          primarySwatch: _themeColor,
          iconTheme: IconThemeData(color: _themeColor)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("主题颜色"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //第一行Icon使用主题中的iconTheme
            Icon(Icons.favorite),
            Icon(Icons.airport_shuttle),
            Text("颜色跟谁主题"),

            //为第二行Icon自定义颜色（固定为黑色)
            Theme(
                data: themeData.copyWith(
                    iconTheme:
                        themeData.iconTheme.copyWith(color: Colors.black)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Icon(Icons.airport_shuttle),
                    Text("  颜色固定黑色")
                  ],
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => setState(() => _themeColor =
                _themeColor == Colors.teal ? Colors.blue : Colors.teal)),
      ),
    );
  }
}
