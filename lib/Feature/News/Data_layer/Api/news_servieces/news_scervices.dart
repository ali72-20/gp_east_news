import 'dart:core';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';

class NewsServieces {
  final Dio dio;

  NewsServieces(this.dio);
  final url = 'http://localhost:3000/news/getNews';
  Future<List<news_model>> getNews({required String categoryName}) async {
    try {
      final response = await dio.get(
              url,
         queryParameters: {'country': 'eg', 'language': 'en', 'category': categoryName},
      );
      List<dynamic> articals = response.data;
      List<news_model> news_list = [];
      for (var art in articals) {
        news_list.add(news_model(
            image: art["urlToImage"],
            title: art["title"],
            content: art["description"]));
      }
      log(news_list.length.toString());
      return news_list;
    }
    catch (e){
      return [];
    }
  }
}