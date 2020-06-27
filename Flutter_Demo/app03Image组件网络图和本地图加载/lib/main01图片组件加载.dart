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
      child: Image.network(
        "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1593224718&di=d254ec40aa3ff449647fe4237d41d5ae&src=http://img.improve-yourmemory.com/pic/78739853e99028b1705d953bf722b341-4.jpg",
        // alignment: Alignment.topRight,  // 对其方式
        // color: Colors.blue,   // 和colorblendModel配合使用改变图片的前景色
        // colorBlendMode: BlendMode.screen,
        // fit: BoxFit.contain, // 图片填充方式与ios image的contentModel类似  contain默认模式 
           repeat: ImageRepeat.repeatY, // repeatX x轴平铺  repeatY y轴平铺

      ),
      width: 300,  // 容器的宽度
      height: 800,  // 容器的高度
      decoration: BoxDecoration(    // 容器的装饰者，颜色等处理
        color: Colors.yellow
      ),
     ),
   );
  }

}


