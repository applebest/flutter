
import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/ProductInfo.dart';
import '../pages/Product.dart';
import '../pages/Search.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';


const String tabsRouteStr = "/";
const String formRouteStr = "/form";
const String productRouteStr = "/product";
const String productinfoRouteStr = "/productinfo";
const String searchRouteStr = "/search";
const String loginRouteStr = "/login";
const String registerFirstRouteStr = "/registerFirst";
const String registerSecondRouteStr = "/registerSecond";
const String registerThirdRouteStr = "/registerThird";



final routes = {
  tabsRouteStr:(context)=>Tabs(),
  formRouteStr:(context)=>FormPage(),
  productRouteStr:(context)=>ProductPage(),
  productinfoRouteStr:(context,{arguments})=>ProductInfoPage(arguments:arguments),
  searchRouteStr:(context,{arguments})=>SearchPage(arguments:arguments),
  loginRouteStr:(context)=>LoginPage(),
  registerFirstRouteStr:(context)=>RegisterFirstPage(),
  registerSecondRouteStr:(context)=>RegisterSecondPage(),
  registerThirdRouteStr:(context)=>RegisterThirdPage(),


};


//固定写法
var onGenerateRoute=(RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
};