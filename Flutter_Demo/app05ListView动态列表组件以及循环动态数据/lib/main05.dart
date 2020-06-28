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
//  List<Widget> _getData() {
//    List<Widget> list = List<Widget>();
//    for (var i = 0; i < 20; i++) {
//      list.add(ListTile(
//        title: Text("我是${i}"),
//      ));
//    }
//    return list;
//  }


// 创建listTitle组件
  Widget _getListData(context,index){
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
