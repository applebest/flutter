import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("发发发"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // container包租子组件Wrap，container控制一块区域的大小和底部颜色
    return  Container(
       height: 600, // 区域的高度
      width: 320, //  区域的宽度
      color: Colors.pink, // 颜色
      padding: EdgeInsets.all(10), //子元素相对父元素的上下左右各为10
      child: Wrap(  // 标签流水布局
        spacing: 10, // 左右间隔
        runSpacing:10, // 上线间隔
        direction: Axis.vertical, // 排列方向
//        alignment: WrapAlignment.center,
//        runAlignment: WrapAlignment.center,
        children: <Widget>[ // 子元素们
          MyButton("第1季"),  // 自定义button
          MyButton("第2季"),
          MyButton("第3sdfdsfdsdsf季"),
          MyButton("第4季"),
          MyButton("第水电费的首付多少"),
          MyButton("第6季"),
          MyButton("第7季"),
        ],
      ),
    ) ;


  }
}

class MyButton extends StatelessWidget {

  final String text; // 传入的text

  const MyButton(this.text,{Key key}) : super(key: key); // 构造函数


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed:(){
      },
    );

  }}




