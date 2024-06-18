import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/ConstantKeies/ConstKey.dart';
import 'package:gp_east_news/UI/colors/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../FormComponent /Top_Bar.dart';
import 'LoginForm.dart';
import '../FormComponent /TextComp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
      appBar: AppBar(
        backgroundColor: primary_color,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Top_Bar(),
            TextButton(
              onPressed: () async {
                final   pref = await SharedPreferences.getInstance();
                pref.setBool(constKey.onBoaring, false);
              },
              child: TextComp(
                message: "WELCOME TO EAST NEWS!",
                message_color: Colors.black,
                size: 16,
              ),
            ),

            Loginform(),
          ],
        ),
      ),
    );
  }
}
