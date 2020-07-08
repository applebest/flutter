import 'package:flutter/material.dart';
//import '../Search.dart';

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
            Navigator.pushNamed(context, "/search",arguments:{
              "id":123
            });
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("跳转到商品页面"),
          onPressed: (){
            Navigator.pushNamed(context, "/product");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )

      ],
    );
  }
}
