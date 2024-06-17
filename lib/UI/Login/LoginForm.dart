import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/colors/colors.dart';
import 'package:gp_east_news/UI/home.dart';

import 'inputComp.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          inputComp(lableText: "Email", sufIcone: Icons.mail),
          inputComp(lableText: "Password", sufIcone: Icons.password),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(right: 32, top: 4),
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: gray,
                fontFamily: 'Poppins',
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primary_color,
                elevation: 12.0,
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>home()));
              },
              child: const Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 16),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
