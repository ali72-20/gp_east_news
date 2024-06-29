import 'package:dio/dio.dart';

import 'news_model.dart';

class newsServies {
  final Dio dio;

  newsServies(this.dio);

  final url = 'http://localhost:3000/news/getNews';

  Future<news_model> getNews({required String category}) async {
    Response response = await dio.get(
      url,
      data: {'country': 'eg', 'language': 'en', 'category': category},
    );
    news_model model = news_model.fromJason(response.data);
    return model;
  }
}
