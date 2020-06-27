
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

// 自定义组件    无状态组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 返回flutter装饰器
    return  MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title:Text("flutter demo")
          ),
          body: HomeContent(), // 中间部分
        ),
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
    );
  }

}


class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
           child:Text(
            "你好flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle (
              fontSize: 40.0,
              // color: Colors.yellow,
              color: Color.fromRGBO(244, 233, 214, 0.5),
            ),
          ),
        );
  }
}