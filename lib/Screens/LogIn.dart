import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_east_news/Components/LoginBar.dart';

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
      body: const Column(
        children: [
          Loginbar(),
          Padding(
            padding: EdgeInsets.only(top: 32.0),
            child: Text(
              'WELCOME TO EAST NEWS!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
