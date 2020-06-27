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
          child: ClipOval(  // 使用椭圆组件
            // child: Image.network(  // 使用网络图片
            //        "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1593224718&di=d254ec40aa3ff449647fe4237d41d5ae&src=http://img.improve-yourmemory.com/pic/78739853e99028b1705d953bf722b341-4.jpg",
            //         fit: BoxFit.cover,  // 图片填充模式
            //         height: 300,  // 设置高度  
            //         width: 300,  // 设置宽度
            //         /*
            //          默认不设置宽度和高度，直接使用ClipOval的组件如果图片过高会变为椭圆形，ClipOval常作为圆角图片使用
            //         */
            // ),

            /*
            使用本地图片
            1 在项目中创建images文件夹，和lib同一层级 ,要求images中有2.0x文件夹和3.0x文件夹，存储2倍和3倍图，会自动判别使用

            2 在pubspec.yaml中配置asset中images的路径

            3 如果配置全部图片只写images/2.0x   images/3.0x 的路径，如果使用单张图片写全路径如：images/2.0x/a.jpeg
            
            */ 
            child: Image.asset(
              "images/a.jpeg",
               width: 300.0,
               height: 300.0,
               fit: BoxFit.cover,
              ), 

            
          ),
     )
   );
  }

}


