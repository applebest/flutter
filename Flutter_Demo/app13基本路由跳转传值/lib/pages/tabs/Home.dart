import 'package:flutter/material.dart';
import 'package:app13/pages/Search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed: (){
            // 路由跳转
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchPage()
              )
            );

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("跳转到表单页面并传值"),
          onPressed: (){

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )

      ],
    );
  }
}
