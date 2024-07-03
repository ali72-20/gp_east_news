import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:gp_east_news/Core/Messages/errorsMeassages.dart';
import 'package:gp_east_news/Feature/Main/Presentation_layer/views/mainScreen.dart';
import 'package:gp_east_news/Feature/Profile/presentation_layer/views/widgets/userModel.dart';
class Validation {
  final Dio dio;

  Validation(this.dio);
  final String url = 'http://192.168.1.46:2000/user/login';

  Future<int> isUserFound({required String mail, required String password}) async {
    try {
      Response response = await dio.post(
        url,
        data: {
          'email': mail,
          'password' : password
        },
      );

      SaveUserData(response);

      return 200;

    } on DioException catch(e){
        log('$e');
        return 400;
    } catch(e){
      log('$e');
      rethrow;
    }
  }


  void SaveUserData(Response<dynamic> response) {
        Map<String,dynamic> userData = response.data['user'];
    user_model.Mail = userData['email'];
    user_model.id = userData['_id'];
  }

}
