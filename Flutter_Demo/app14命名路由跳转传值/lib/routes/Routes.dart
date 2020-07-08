
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Tabs.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';


final routes = {
  "/": (context,{arguments}) => Tabs(),
  "/form": (context) => FormPage(),
  "/product": (context) => ProductPage(),
  "/productInfo": (context, {arguments}) => ProductInfo(arguments: arguments),
  "/search": (context, {arguments}) => SearchPage(arguments: arguments),
};

 var onGenerateRoute = (RouteSettings settings) {
   final String name = settings.name;

    final Function pageContentBuilder = routes[name];

    if (pageContentBuilder != null && settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return   route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
};
