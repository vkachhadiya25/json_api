import 'package:flutter/material.dart';
import 'package:json_api/utils/app_routes.dart';
import 'package:provider/provider.dart';
import 'screen/home/provider/home_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeProvider(),),
    ],
    child: MaterialApp(
      theme: ThemeData(useMaterial3: true,),
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
    ),
  ));
}


