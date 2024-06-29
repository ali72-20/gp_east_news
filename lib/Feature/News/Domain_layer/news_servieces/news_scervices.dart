import 'package:dio/dio.dart';

import 'news_model.dart';

class newsServies {
  final Dio dio;

  newsServies(this.dio);

  Future<news_model> getNews({required String category}) async {
    Response response = await dio.get(
      'http://localhost:3000/news/getNews',
      data: {'country': 'eg', 'language': 'en', 'category': category},
    );
    news_model model = news_model.fromJason(response.data);
    return model;
  }
}
