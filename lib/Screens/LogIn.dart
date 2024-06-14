import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Components/LoginBar.dart';
import 'package:gp_east_news/Components/LoginForm.dart';
import 'package:gp_east_news/Components/TextComp.dart';

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
        backgroundColor: const Color(0xff03416E),
      ),
      body:  Column(
        children: [
          const Loginbar(),
          TextComp(message: "WELCOME TO EAST NEWS!"),
          Loginform(),

        ],
      ),
    );
  }
}
