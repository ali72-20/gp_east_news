import 'dart:core';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:gp_east_news/Feature/Main/Presentation_layer/views/mainScreen.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';
import 'package:gp_east_news/Feature/comments%20/data_layer/Api/commets.dart';
import 'package:gp_east_news/Feature/comments%20/data_layer/model/commentModel.dart';
import 'package:gp_east_news/Feature/interactions%20/data_layer/Api/likesModel.dart';

import '../../../../interactions /data_layer/Api/liked.dart';

class NewsServieces {
  final Dio dio;

  NewsServieces(this.dio);

  final String url = 'http://192.168.1.60:2000/news/getNews';
  final String token = 'Bearer ${user_model.token}';
  final String country = selectedLang == 'en' ? 'us' :'eg';
  final String lang = selectedLang == 'en' ? 'en' :'ar';

  Future<List<news_model>> getNews({required String categoryName}) async {
    try {
      final response = await dio.get(url,
          data: {
            'country': country,
            'language': lang,
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
            url:  artical['url'],
            likes: 0,
            comments: 0,
            isLiked: false,
            author: artical['source'],
            date: artical['publishedAt']));
      }

      for(var item in articalList){
        List<commentModel> list = await Comments(Dio()).getComment(articleId: item.id);
        item.comments = list.length;
        likesModel model = await Likes(Dio()).getLiks(articleId: item.id);
        item.likes = model.likes;
        for(var go in model.authoerID){
          if(go == user_model.id){
            item.isLiked = true;
            break;
          }
        }
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
