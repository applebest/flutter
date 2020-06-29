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
  Widget _getData(context, index) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Image.network(listData[index]["imageUrl"]),
          SizedBox(height: 10),
          Text(
            listData[index]["title"],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(
        color: Color.fromRGBO(233, 233, 233, 0.9),
        width: 1,
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
     // builder方式生成动态列表
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // 纵轴每一个item间隙20
        crossAxisSpacing: 10,
        //      // 横轴每一个item间隙20
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemCount: listData.length,
      itemBuilder: this._getData,
//      padding: EdgeInsets.all(10),
//      // 每一个的padding，上下左右间隙10
//      crossAxisSpacing: 10,
//      // 纵轴每一个item间隙20
//      mainAxisSpacing: 10,
//      // 横轴每一个item间隙20
//      crossAxisCount: 2,
//      // 一行显示多少个widget
//      children: this._getData(),
//      // children数组
////      childAspectRatio: 1,
    );
  }
}
