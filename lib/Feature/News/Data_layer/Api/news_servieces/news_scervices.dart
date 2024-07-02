import 'dart:core';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';

class NewsServieces {
  final Dio dio;

  NewsServieces(this.dio);

  final String url = 'http://192.168.1.46:2000/news/getNews';
  final String token = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2Njg0ODI0MTA5NDZjOTk5MGZkMGM3NDUiLCJpYXQiOjE3MTk5NjAxMjksImV4cCI6MTcyMDIxOTMyOX0.Jubixaqj67qtwOcFROA2Zomc0m6og_GC-4QOijEcQ8E';

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
