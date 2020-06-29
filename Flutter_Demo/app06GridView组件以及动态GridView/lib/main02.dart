import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  // 定义私有函数
  List<Widget> _getData() {
    // 创建list数组
    List<Widget> list = List<Widget>();
    // 循环创建添加container
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "我是第$i条数据",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        color: Colors.blue,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10), // 每一个的padding，上下左右间隙10
      crossAxisSpacing: 20, // 纵轴每一个item间隙20
      mainAxisSpacing: 20, // 横轴每一个item间隙20
      crossAxisCount: 2, // 一行显示多少个widget
      children: this._getData(), // children数组
      childAspectRatio: 1,
    );
  }
}
