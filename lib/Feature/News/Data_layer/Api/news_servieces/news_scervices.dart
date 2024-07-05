import 'dart:core';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:gp_east_news/Feature/Main/Presentation_layer/views/mainScreen.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';

class NewsServieces {
  final Dio dio;

  NewsServieces(this.dio);

  final String url = 'http://192.168.1.60:2000/news/getNews';
  final String token = 'Bearer ${user_model.token}';

  Future<List<news_model>> getNews({required String categoryName}) async {
    try {
      final response = await dio.get(url,
          data: {
            'country': 'us',
            'language': 'en',
            'category': categoryName,
          },
          options: Options(headers: {'Authorization': token}));
      List<dynamic> respo = response.data;
      List<news_model> articalList = [];
      for (dynamic artical in respo) {
        articalList.add(news_model(
          id:  artical['_id'],
            title: artical['title'],
            image: artical['imageURL'],
            content: artical['content'],
            likes: 0,
            comments: 0,
            isLiked: false,
            isSaved: false,
            author: artical['source'],
            date: artical['publishedAt']));
      }
      return articalList;
    } on DioException catch (e) {
      log('Dio error $e');
      throw ();
    } catch (e) {
      log('Error fetching mews $e');
      rethrow;
    }
  }
}
