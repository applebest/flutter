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
          title:Text(
              "flutter Demo"
          )
        ),  
        body: HomeContent(),
      ),      
    );
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Center(
     child:Container(
      width: 300,  // 容器的宽度
      height: 300,  // 容器的高度
      decoration: BoxDecoration(    // 容器的装饰者，使用container的装饰特性变更图片为圆形
        color: Colors.yellow,  // container容器装饰器更改颜色
        // borderRadius: BorderRadius.all(   //圆角
        // Radius.circular(150),         
        // )
           borderRadius: BorderRadius.circular(150),  // 设置圆角
           image: DecorationImage(   // 设置装饰者图片
             image: NetworkImage(  // 使用网络图片
               "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1593224718&di=d254ec40aa3ff449647fe4237d41d5ae&src=http://img.improve-yourmemory.com/pic/78739853e99028b1705d953bf722b341-4.jpg"
             ),
             fit: BoxFit.cover   // 设置图片的填充模式
        )

      ),
     )
   );
  }

}


