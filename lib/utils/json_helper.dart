import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:json_api/screen/home/model/home_model.dart';

class JsonHelper {
  Future<HomeModel?> newsAPICall() async {
    var jsonString =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=8863e8ed827c4af586e90903e66655a1";
    var response = await http.get(Uri.parse(jsonString));

    if (response.statusCode == 200) {
      var newsData = jsonDecode(response.body);
      HomeModel news = HomeModel.mapToModel(newsData);
      return news ;
    }
    return null;
  }
}
