import 'package:flutter/material.dart';
import 'package:flutterstudydemo/Echo.dart';
import 'package:flutterstudydemo/FormTestRouter.dart';
import 'package:flutterstudydemo/ImageStudy.dart';
import 'package:flutterstudydemo/LoginPage.dart';
import 'package:flutterstudydemo/NewRoute.dart';
import 'package:flutterstudydemo/ProgressIndicatorRoute.dart';
import 'package:flutterstudydemo/RouteTestRoute.dart';
import 'package:flutterstudydemo/SwitchAndCheckBoxTestRouter.dart';

import 'Button.dart';

void main() {
  runApp(MyApp());
}

//class TestApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//      return Echo(text: "hello world");
//  }
//
//}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //注册路由表
        routes: {
          "button_route": (context) => Button(),
          "image_route": (context) => ImageStudy(),
          "switch_and_checkbox_route": (context) =>
              SwitchAndCheckBoxTestRouter(),
          "login_route":(context)=> LoginPage(),
          "form_test_router":(context) => FormTestRouter(),
          "progress_indicator_route":(context) => ProgressIndicatorRoute()

//        "my_home_page":(context)=>MyHomePage(title: "Flutter Demo Home Page",)//注册首页路由
        },
        home: MyHomePage(
          title: 'this is flutter teach demo',
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class CounterWidget extends StatefulWidget {
  CounterWidget({Key key, this.initValue}) : super(key: key);
  final int initValue;

  @override
  State<StatefulWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._counter = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          textColor: Colors.blue,
          child: Text("$_counter"),
          onPressed: () => setState(() => {++_counter}),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                  child: Text("button"),
                  onPressed: () {
                    Navigator.pushNamed(context, "button_route");
                  }),
              OutlineButton(
                  child: Text("image"),
                  onPressed: () {
                    Navigator.pushNamed(context, "image_route");
                  }),
              OutlineButton(
                child: Text("switchAndCheckbox"),
                onPressed: (){
                  Navigator.pushNamed(context, "switch_and_checkbox_route");
                },
              ),
              OutlineButton(
                child: Text("loginActivity"),
                onPressed: (){
                  Navigator.pushNamed(context, "login_route");
                },
              ),
              OutlineButton(
                child: Text("form_test_router"),
                onPressed: (){
                  Navigator.pushNamed(context, "form_test_router");
                },
              ),
              OutlineButton(
                child: Text("progress indicator"),
                onPressed: (){
                  Navigator.pushNamed(context, "progress_indicator_route");
                },
              )
            ],
          ),
        )
      ),
    );
  }
}
