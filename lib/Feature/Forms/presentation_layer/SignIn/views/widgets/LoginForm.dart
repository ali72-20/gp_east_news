import 'package:flutter/material.dart';
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
              mailController: controller,
            ),

            password_input(
              model: input_componenet_model(
                  lablText: "password",
                  suffixIcon: Icons.visibility_off,
                  is_password: true),
            ),


            const SizedBox(height: 15),

            Button(
              title: 'Sign in',
              backgroundColor: primary_color,
              onPress: () {
                user_model.Mail = controller.text;
                FocusScope.of(context).unfocus();
                if (globalKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => main_screen(
                        current_fragmnet_index: 0,
                      ),
                    ),
                  );
                } else {}
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
}
