import 'dart:core';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';

class NewsServieces {
  final Dio dio;

  NewsServieces(this.dio);

  final url =
      'https://newsapi.org/v2/top-headlines?apiKey=98583a75142f49e5ac3d537b61989171&country=us';

  Future<List<news_model>> getNews({required String categoryName}) async {
    try {
      final response = await dio.get(url, queryParameters: {
        'country': 'eg',
        'language': 'en',
        'category': categoryName,
      });
      Map<String, dynamic> res = response.data;
      List<dynamic> articals = res['articles'];
      List<news_model> list = [];
      for (var art in articals) {
        list.add(news_model(
            image: art["urlToImage"],
            title: art["title"],
            content: art["content"]));
      }
      log(list.length.toString());
      return list;
    } catch (e) {
      log('Error fetching mews $e');
      rethrow;
    }
  }
}
