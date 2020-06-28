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
    var tempList = listData.map((e) {
      return ListTile(
          leading:Image.network(e["imageUrl"]),
          title: Text(e["title"]) ,
          subtitle: Text(e["author"]),
      );
    });
    return tempList.toList();
  }


  @override
  Widget build(BuildContext context) {
      return ListView(
        children: this._getData(),
      );
  }
}
