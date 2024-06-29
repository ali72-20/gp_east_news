import 'package:dio/dio.dart';

import 'news_model.dart';

class newsServies {
  final Dio dio;

  newsServies(this.dio);

  final url = 'http://localhost:3000/news/getNews';

  Future<List<news_model>> getNews({required String category}) async {
    Response response = await dio.get(
      url,
      data: {'country': 'eg', 'language': 'en', 'category': category},
    );
    List<news_model> news_list = [];
    for(var item in response.data){
       news_list.add( news_model(title: item['title'], image: item['imageURL'], content: item['content']));
    }
    return news_list;
  }
}
