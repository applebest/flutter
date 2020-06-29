import 'package:flutter/material.dart';
import 'listData.dart';

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
    var tempListData = listData.map((e) {
      return Container(
        alignment: Alignment.center,
        child:Column(
          children: <Widget>[
            Image.network(e["imageUrl"]),
            SizedBox(height: 10),
            Text(e["title"],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20
              ),
            ),
          ],
        ),

        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 1,
          )
        ),

      );
    });

    return tempListData.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      // 每一个的padding，上下左右间隙10
      crossAxisSpacing: 10,
      // 纵轴每一个item间隙20
      mainAxisSpacing: 10,
      // 横轴每一个item间隙20
      crossAxisCount: 2,
      // 一行显示多少个widget
      children: this._getData(),
      // children数组
//      childAspectRatio: 1,
    );
  }
}
