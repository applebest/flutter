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
          title: Text("我是title"),
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
    return  Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(child:Container(
              height: 180,
              color: Colors.red,
              child: Text("你好flutter"),
            )
            )
          ],
        ),

        SizedBox(height: 10,),

        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child:Container(
                height: 180,
                child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
                  fit: BoxFit.cover,
                ),

              )
            ),

            SizedBox(width: 10,),

            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 10,height: 10,),

                    Container(
                      height: 85,
                      child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593408358618&di=fbd259b6ca3b0eb20cee1a05325631e3&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2Feb%2F09fc1111058_250_350.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),

                  ],
                )
              )
            ),

          ],
        )

      ],
    );
  }
}



