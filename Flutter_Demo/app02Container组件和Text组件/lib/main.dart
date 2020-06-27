import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    var materialApp = MaterialApp(
              home: Scaffold(
                appBar: AppBar(
                  title: Text("flutter"),
                ),
                body: HomeContent(),
              ),
          theme: ThemeData(
            primarySwatch: Colors.yellow,
          ),
        );
        return  materialApp;
  }
  
}

class HomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
       child:Container(
         child: Text(  // text文本
           "我是一个文本时代峰峻禄口街道杀戮空间弗兰克，第三方据了解代课老师",  //文本内容
           textAlign: TextAlign.right,       //对齐方式
           overflow: TextOverflow.ellipsis,  // 超出剪裁字
           maxLines: 2,  // 最大行数
           textScaleFactor: 4.0,  //字体倍率 (放大几倍)
           style: TextStyle(     //text的样式
             fontSize:16.0,     // 字体大小
             color: Colors.red,// 字体颜色
             fontWeight: FontWeight.w300,  // 字重
             fontStyle: FontStyle.italic,  // 字体侵袭
             decoration: TextDecoration.lineThrough, // 字体带横线
             decorationColor: Colors.white,  // 横线的颜色
             decorationStyle: TextDecorationStyle.dashed, // 变为虚线
             letterSpacing:  4.0,
           ),
        ),
        height: 300.0,  // 包装框的高度
        width: 300.0,   // 包装框的宽度
        decoration: BoxDecoration(   //装饰
          color: Colors.blue,    // 包装框的颜色
          border: Border.all(   // 所有添加边框
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(  // 圆角
              Radius.circular(50),  // 圆角大小
            ),
        ),
        padding: EdgeInsets.all(20),  // 容器本身和容器内部的元素的间距
          //  padding: EdgeInsets.fromLTRB(10, 20, 30, 10), // 决定每个方向的距离

        // transform: Matrix4.translationValues(100, 0, 0), // 移动
        // transform: Matrix4.rotationZ(0.3), // 旋转

        alignment: Alignment.bottomCenter,  // 文字居于底部

       )
    );
  }
}