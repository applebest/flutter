import 'package:app15/routes/Routes.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页面"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(onPressed: () {
            Navigator.pushNamed(context, productinfoRouteStr,
                arguments: {"pid": 456});
            },
            child: Text("跳转到商品详情"),
            
          ),
          
          
        ],
      ),
    );
  }
}
