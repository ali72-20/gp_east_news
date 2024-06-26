import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../colors/colors.dart';
import '../FormComponent /Button.dart';
import '../FormComponent /TextComp.dart';
import '../FormComponent /Top_Bar.dart';
import '../FormComponent /inputComp.dart';
import 'Confirmation.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primary_color,
      ),
      body: SingleChildScrollView(
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
            inputComp(lableText: 'User Name', sufIcone: Icons.text_fields),
            inputComp(lableText: 'Email', sufIcone: Icons.mail),
            inputComp(lableText: 'Password', sufIcone: Icons.password),
            inputComp(
                lableText: 'Confirm Password',
                sufIcone: Icons.confirmation_number),
            Container(
                margin: const EdgeInsets.only(top: 40),
                child: Button(
                  title: 'Sign Up',
                  backgroundColor: primary_color,
                  onPress: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const Confirmation()));
                  },
                ))
          ],
        ),
      ),
    );
  }
}
