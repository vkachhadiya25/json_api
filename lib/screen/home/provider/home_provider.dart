import 'package:flutter/material.dart';
import 'package:json_api/screen/home/model/home_model.dart';
import 'package:json_api/utils/json_helper.dart';

class HomeProvider with ChangeNotifier
{
   HomeModel? homeModel;

   Future<void> getNews()
   async {
     JsonHelper jsonHelper = JsonHelper();
     HomeModel? m1 = await jsonHelper.newsAPICall();
     homeModel = m1;
     notifyListeners();
   }
}