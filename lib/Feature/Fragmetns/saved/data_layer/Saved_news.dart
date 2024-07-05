import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../Main/Presentation_layer/views/mainScreen.dart';

class SavedNews {
  final Dio dio;

  SavedNews(this.dio);

  final String base = 'http://192.168.1.60:2000/news';
  final String token = 'Bearer ${user_model.token}';

  Future<String> save(
      {required String userId, required String articalId}) async {
    try {
      Response response = await dio.post(
        '$base/save',
        data: {"userId": userId, "articleId": articalId},
        options: Options(headers: {'Authorization': token}),
      );

      return response.data['message'];
    } on DioException catch (e) {
      log('Error status: ${e.response?.statusCode}');

      log('Error message: ${e.response?.statusMessage}');

      log('Error data: ${e.response?.data}');
      return e.response?.data;
    } catch (e) {
      return 'Something went wrong';
    }
  }
}
