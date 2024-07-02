
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/Messages/toast_message.dart';
import 'package:gp_east_news/Feature/Main/Presentation_layer/views/mainScreen.dart';
import '../../../../../colors/colors.dart';
import '../../components /Button.dart';
import '../../components /TextComp.dart';
import '../../components /Top_Bar.dart';
import '../../components /TextInputComp.dart';
import '../../components /input_compoenet_model.dart';
import '../../components /password_input.dart';
import '../../Confirmation/views/Confirmation.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> globalKey = GlobalKey();
   TextEditingController mailController = TextEditingController();
   TextEditingController userNameController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
   TextEditingController confirmPasswordController = TextEditingController();

   @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mailController.dispose();
    userNameController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primary_color,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: globalKey,
            child: Column(
              children: [
                const Top_Bar(),
                const SizedBox(
                  height: 48,
                ),
                TextComp(
                    message: "LET'S CREATE ACCOUNT",
                    message_color: Colors.black,
                    size: 16),

                TextInputComp(
                    lableText: 'User Name', sufIcone: Icons.text_fields, controller: userNameController,),

                TextInputComp(lableText: 'Email', sufIcone: Icons.mail, controller: mailController,),

                password_input(
                  model: input_componenet_model(
                      lablText: "password",
                      suffixIcon: Icons.visibility_off,
                      is_password: true),
                  passwordcontroller: passwordController,
                ),

                password_input(
                  model: input_componenet_model(
                      lablText: "Confirm password",
                      suffixIcon: Icons.visibility_off,
                      is_password: true),
                  passwordcontroller: confirmPasswordController,
                ),

                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Button(
                    title: 'Sign Up',
                    backgroundColor: primary_color,
                    onPress: () {
                      validateFeildes();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }



  void NavigatToConfirmScreen(BuildContext context) {
     Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => const Confirmation()));
  }


  bool ValidateMail({required String mail}) {
    final bool emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(mail);
    return emailValid;
  }


  bool isSamePassword({required String password, required String confirmPassword}){
     return password == confirmPassword;
  }



  bool validateFeildes(){
     if(!globalKey.currentState!.validate()){
        return false;
     }
     if(!ValidateMail(mail: mailController.text)){
          ToastMessage().showErrorMessage(message: 'This mail is not valid');
          return false;
     }
     if(!isSamePassword(password: passwordController.text, confirmPassword: confirmPasswordController.text)){
       ToastMessage().showErrorMessage(message: 'The Two password are not the same');
       return false;
     }
     user_model.Mail = mailController.text;
     user_model.userName = userNameController.text;
     user_model.password = passwordController.text;
     NavigatToConfirmScreen(context);
     return true;
  }

}
