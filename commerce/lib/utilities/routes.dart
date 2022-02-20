
import 'package:commerce/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:commerce/screeens/productDetail.dart';
class Routes{
  static final routes= <String,WidgetBuilder>{
    Constants.ROUTE_PRODUCT_DETAIL!:(BuildContext context)=>Detail()
  };
}