import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.




  @override
  Widget build(BuildContext context) {

    return MaterialApp(
//      title: 'Flutter Demo',
//      home: Tabs(),
      initialRoute: "/",   // 初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute

    );
  }
}


