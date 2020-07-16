import 'package:app15/routes/Routes.dart';
import 'package:flutter/material.dart';


class RegisterFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一步-输入手机号"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Text("这是注册的第一步"),
          RaisedButton(onPressed:(){
//              Navigator.pushNamed(context, registerSecondRouteStr);

              Navigator.pushReplacementNamed(context, registerSecondRouteStr);

            },
            child: Text("下一步"),

          )
        ],
      ),

    );
  }
}



