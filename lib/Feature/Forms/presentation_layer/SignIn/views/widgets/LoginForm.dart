import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/Messages/errorsMeassages.dart';
import 'package:gp_east_news/Core/Messages/toast_message.dart';
import 'package:gp_east_news/Feature/Forms/Data_layer/login_Api.dart';
import 'package:gp_east_news/Feature/Forms/presentation_layer/SignIn/views/widgets/login_with_google.dart';
import 'package:gp_east_news/Feature/Forms/presentation_layer/components%20/input_compoenet_model.dart';
import 'package:gp_east_news/Feature/Forms/presentation_layer/components%20/password_input.dart';
import '../../../../../Main/Presentation_layer/views/mainScreen.dart';
import '../../../../../../colors/colors.dart';
import '../../../components /Button.dart';
import '../../../components /TextInputComp.dart';
import 'dont_have_account.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  GlobalKey<FormState> globalKey = GlobalKey();
  final TextEditingController controller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Form(
        key: globalKey,
        child: Column(
          children: [
            TextInputComp(
              lableText: "Email",
              sufIcone: Icons.mail,
              controller: controller,
            ),
            password_input(
              model: input_componenet_model(
                  lablText: "password",
                  suffixIcon: Icons.visibility_off,
                  is_password: true),
              passwordcontroller: passwordController,
            ),

            const SizedBox(height: 15),

            Button(
              title: 'Sign in',
              backgroundColor: primary_color,
              onPress: () {
                FocusScope.of(context).unfocus();
                if (globalKey.currentState!.validate()) {
                  if (ValidateMail(mail: controller.text)) {
                    validToNavigate(context);
                  } else {
                    ToastMessage()
                        .showErrorMessage(message: 'This mail not valid');
                  }
                }
              },
            ),

            const SizedBox(height: 16),


            Image.asset('assets/Images/orline.png'),

            const SizedBox(height: 16),

            const loginWittGoogle(),

            const SizedBox(
              height: 24,
            ),

            const dontHaveAccount(),
          ],
        ),
      ),
    );
  }



  void validToNavigate(BuildContext context) async{
    int code = await checkStatueResponse();
    log('Code 2 is $code');
    if (code != 200) {
      ToastMessage().showErrorMessage(message: loginError);
    } else {
      NavigateToMainScreen(context);
    }
  }


  void NavigateToMainScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => main_screen(
          current_fragmnet_index: 0,
        ),
      ),
    );
  }


  bool ValidateMail({required String mail}) {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(mail);
    return emailValid;
  }


  Future<int> checkStatueResponse() async{
      int code = await Validation(Dio()).isUserFound(
         mail: controller.text,
         password: passwordController.text);
      log('Code is $code');
      return code;
  }

}
