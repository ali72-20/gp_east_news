import 'package:flutter/material.dart';
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
                    lableText: 'User Name', sufIcone: Icons.text_fields, mailController: TextEditingController(),),
                TextInputComp(lableText: 'Email', sufIcone: Icons.mail, mailController: TextEditingController(),),
                password_input(
                  model: input_componenet_model(
                      lablText: "password",
                      suffixIcon: Icons.visibility_off,
                      is_password: true),
                ),
                password_input(
                  model: input_componenet_model(
                      lablText: "Confirm password",
                      suffixIcon: Icons.visibility_off,
                      is_password: true),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Button(
                    title: 'Sign Up',
                    backgroundColor: primary_color,
                    onPress: () {
                      if (globalKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Confirmation()));
                      }
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
}
