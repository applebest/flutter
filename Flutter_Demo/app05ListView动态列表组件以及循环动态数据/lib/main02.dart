import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {

  /*
    自定义数组内都是widget的 数组 List<Widget>泛型数组
    私有函数 返回List<Widget>数组
    for循环添加20个listTitle
  */
  List<Widget> _getData(){
    List<Widget> list = List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("我是$i列表"),
      ));
    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
      return ListView(
        children: this._getData(),
      );
  }
}
