import 'dart:core';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';

class NewsServieces {
  final Dio dio;

  NewsServieces(this.dio);

  final String url = 'http://192.168.1.44:2000/news/getNews';
  final String token = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NjMzNWZjOGJiMTkyMGViYTAyMGExNjIiLCJpYXQiOjE3MTk4MzA0NDcsImV4cCI6MTcyMDA4OTY0N30.lxi9Ib-gUxCToiGqAWljNOcsTMvKJu0Zc3kFJugZl80';

  Future<List<news_model>> getNews({required String categoryName}) async {
    try {
      final response = await dio.get(
        url,
        data: {
          'country': 'us',
          'language': 'en',
          'category': categoryName,
        },
        options: Options(
          headers: {
            'Authorization' : token
          }
        )
      );
      List<dynamic> respo = response.data;
      List<news_model> articalList = [];
      for(dynamic it in respo){
          articalList.add(
            news_model(title: it['title'], image: it['imageURL'], content: it['content'], likes: 0, comments: 0, isLiked: false, isSaved:  false)
          );
      }
      return articalList;
    }
    on DioException catch(e){
      log('Dio error $e');
      throw();
    }
    catch (e) {
      log('Error fetching mews $e');
      rethrow;
    }
  }
}
