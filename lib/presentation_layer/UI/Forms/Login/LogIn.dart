import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../ConstantKeies/ConstKey.dart';
import '../../colors/colors.dart';
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
      appBar: AppBar(
        backgroundColor: primary_color,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Top_Bar(),
            TextButton(
              onPressed: () async {
                final pref = await SharedPreferences.getInstance();
                pref.setBool(constKey.onBoaring, false);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 32),
                child: TextComp(
                  message: "WELCOME TO EAST NEWS!",
                  message_color: Colors.black,
                  size: 16,
                ),
              ),
            ),
            Loginform(),
          ],
        ),
      ),
    );
  }
}