import 'package:flutter/material.dart';
import 'package:flutterstudydemo/ClipTestRoute.dart';
import 'package:flutterstudydemo/ContainerRoute.dart';
import 'package:flutterstudydemo/CustomScrollViewRoute.dart';
import 'package:flutterstudydemo/DataShareRoute.dart';
import 'package:flutterstudydemo/DecorationBoxRoute.dart';
import 'package:flutterstudydemo/FlexContainerRoute.dart';
import 'package:flutterstudydemo/FormTestRouter.dart';
import 'package:flutterstudydemo/ImageStudy.dart';
import 'package:flutterstudydemo/InfiniteListViewRoute.dart';
import 'package:flutterstudydemo/LinearContainerroute.dart';
import 'package:flutterstudydemo/ListViewRouter.dart';
import 'package:flutterstudydemo/ListViewSeparatedRoute.dart';
import 'package:flutterstudydemo/LoginPage.dart';
import 'package:flutterstudydemo/NavigatorInterceptRoute.dart';
import 'package:flutterstudydemo/ProgressIndicatorRoute.dart';
import 'package:flutterstudydemo/ScaffoldRoute.dart';
import 'package:flutterstudydemo/ScaffoldTwoRoute.dart';
import 'package:flutterstudydemo/SingleChildScrollViewTestRoute.dart';
import 'package:flutterstudydemo/StackAndPositionedRoute.dart';
import 'package:flutterstudydemo/SwitchAndCheckBoxTestRouter.dart';
import 'package:flutterstudydemo/TransformRoute.dart';

import 'AlertDialogRoute.dart';
import 'AlignRoute.dart';
import 'Button.dart';
import 'ColorAndThemeRoute.dart';
import 'FutureBuildRoute.dart';
import 'ScrollControlRoute.dart';
import 'WrapAndFlowContainerRoute.dart';
import 'car/ProvideRoute.dart';

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
          "login_route": (context) => LoginPage(),
          "form_test_router": (context) => FormTestRouter(),
          "progress_indicator_route": (context) => ProgressIndicatorRoute(),
          "linear_container_route": (context) => LinearContainerRoute(),
          "flex_container_route": (context) => FlexContainerRoute(),
          "wrap_and_flow_route": (context) => WrapAndFlowContainerRoute(),
          "stack_and_positioned_route": (context) => StackAndPositionedRoute(),
          "align_route": (context) => AlignRoute(),
          "decoration_box_route": (context) => DecorationBoxRoute(),
          "transform_route": (context) => TransformRoute(),
          "container_route": (context) => ContainerRoute(),
          "scaffold_route": (context) => ScaffoldRoute(),
          "scaffold_two_route": (context) => ScaffoldTwoRoute(),
          "clip_test_route": (context) => ClipTestRoute(),
          "single_scroll_view_route": (context) =>
              SingleChildScrollViewTestRoute(),
          "list_view_route": (context) => ListViewRouter(),
          "list_separated_route": (context) => ListViewSeparatedRoute(),
          "infinite_list_route": (context) => InfiniteListViewRoute(),
          "custom_scroll_route": (context) => CustomScrollViewRoute(),
          "scroll_controller_route": (context) => ScrollControlRoute(),
          "navigator_intercept_route": (context) => NavigatorInterceptRoute(),
          "inherited_route": (context) => DataShareRoute(),
          "provide_route": (context) => ProvideRoute(),
          "color_theme_route": (context) => ColorAndThemeRoute(),
          "future_async_route": (context) => FutureBuildRoute(),
          "alert_dialog_route": (context) => AlertDialogRoute()

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
                child: Text("按钮组件"),
                onPressed: () {
                  Navigator.pushNamed(context, "button_route");
                }),
            OutlineButton(
                child: Text("图片组件"),
                onPressed: () {
                  Navigator.pushNamed(context, "image_route");
                }),
            OutlineButton(
              child: Text("单选框和复选框"),
              onPressed: () {
                Navigator.pushNamed(context, "switch_and_checkbox_route");
              },
            ),
            OutlineButton(
              child: Text("loginActivity"),
              onPressed: () {
                Navigator.pushNamed(context, "login_route");
              },
            ),
            OutlineButton(
              child: Text("输入框和表单"),
              onPressed: () {
                Navigator.pushNamed(context, "form_test_router");
              },
            ),
            OutlineButton(
              child: Text("进度指示器"),
              onPressed: () {
                Navigator.pushNamed(context, "progress_indicator_route");
              },
            ),
            OutlineButton(
              child: Text("线性布局"),
              onPressed: () {
                Navigator.pushNamed(context, "linear_container_route");
              },
            ),
            OutlineButton(
              child: Text("弹性布局"),
              onPressed: () {
                Navigator.pushNamed(context, "flex_container_route");
              },
            ),
            OutlineButton(
              child: Text("流式布局"),
              onPressed: () {
                Navigator.pushNamed(context, "wrap_and_flow_route");
              },
            ),
            OutlineButton(
              child: Text("层叠布局"),
              onPressed: () {
                Navigator.pushNamed(context, "stack_and_positioned_route");
              },
            ),
            OutlineButton(
              child: Text("align_route"),
              onPressed: () {
                Navigator.pushNamed(context, "align_route");
              },
            ),
            OutlineButton(
              child: Text("装饰容器"),
              onPressed: () {
                Navigator.pushNamed(context, "decoration_box_route");
              },
            ),
            OutlineButton(
              child: Text("transform变换"),
              onPressed: () {
                Navigator.pushNamed(context, "transform_route");
              },
            ),
            OutlineButton(
                child: Text("container容器"),
                onPressed: () {
                  Navigator.pushNamed(context, "container_route");
                }),
            OutlineButton(
              child: Text("scaffold_route"),
              onPressed: () {
                Navigator.pushNamed(context, "scaffold_route");
              },
            ),
            OutlineButton(
              child: Text("scaffold_two_route"),
              onPressed: () {
                Navigator.pushNamed(context, "scaffold_two_route");
              },
            ),
            OutlineButton(
              child: Text("剪裁"),
              onPressed: () {
                Navigator.pushNamed(context, "clip_test_route");
              },
            ),
            OutlineButton(
              child: Text("single_scroll_view_route"),
              onPressed: () {
                Navigator.pushNamed(context, "single_scroll_view_route");
              },
            ),
            OutlineButton(
                child: Text("list_view_route"),
                onPressed: () {
                  Navigator.pushNamed(context, "list_view_route");
                }),
            OutlineButton(
                child: Text("list_separated_route"),
                onPressed: () {
                  Navigator.pushNamed(context, "list_separated_route");
                }),
            OutlineButton(
              child: Text("infinite_list_route"),
              onPressed: () {
                Navigator.pushNamed(context, "infinite_list_route");
              },
            ),
            OutlineButton(
                child: Text("custom_scroll_route"),
                onPressed: () {
                  Navigator.pushNamed(context, "custom_scroll_route");
                }),
            OutlineButton(
                child: Text("滚动监听及控制"),
                onPressed: () {
                  Navigator.pushNamed(context, "scroll_controller_route");
                }),
            OutlineButton(
                child: Text("导航返回拦截"),
                onPressed: () {
                  Navigator.pushNamed(context, "navigator_intercept_route");
                }),
            OutlineButton(
                child: Text("数据共享"),
                onPressed: () {
                  Navigator.pushNamed(context, "inherited_route");
                }),
            OutlineButton(
              child: Text("跨组件状态管理"),
              onPressed: () {
                Navigator.pushNamed(context, "provide_route");
              },
            ),
            OutlineButton(
                child: Text("颜色和主题"),
                onPressed: () {
                  Navigator.pushNamed(context, "color_theme_route");
                }),
            OutlineButton(
                child: Text("异步ui更新"),
                onPressed: () {
                  Navigator.pushNamed(context, "future_async_route");
                }),
            OutlineButton(
                child: Text("对话框"),
                onPressed: () {
                  Navigator.pushNamed(context, "alert_dialog_route");
                })
          ],
        ),
      )),
    );
  }
}
