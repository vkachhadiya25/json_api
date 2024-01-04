import 'package:flutter/cupertino.dart';
import 'package:json_api/screen/home/view/home_screen.dart';

Map<String,WidgetBuilder> appRoutes =
{
  '/' : (context) => const HomeScreen(),
};