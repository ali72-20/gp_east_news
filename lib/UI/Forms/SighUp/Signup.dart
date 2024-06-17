import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/Forms/FormComponent%20/Button.dart';
import 'package:gp_east_news/UI/Forms/FormComponent%20/TextComp.dart';
import 'package:gp_east_news/UI/Forms/FormComponent%20/Top_Bar.dart';
import 'package:gp_east_news/UI/Forms/FormComponent%20/inputComp.dart';

import '../../colors/colors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primary_color,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Top_Bar(),
              TextComp(message: "LET'S CREATE ACCOUNT"),
              inputComp(lableText: 'User Name', sufIcone: Icons.text_fields),
              inputComp(lableText: 'Email', sufIcone: Icons.mail),
              inputComp(lableText: 'Password', sufIcone: Icons.password),
              inputComp(
                  lableText: 'Confirm Password',
                  sufIcone: Icons.confirmation_number),
              Container(
                margin: const EdgeInsets.only(top: 40),
                  child: Button(title: 'Sign Up', backgroundColor: primary_color))
            ],
          ),
        ),
      ),
    );
  }
}
