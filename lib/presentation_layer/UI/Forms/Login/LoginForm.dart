import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../Screens/mainScreen.dart';
import '../../colors/colors.dart';
import '../FormComponent /Button.dart';
import '../FormComponent /inputComp.dart';
import '../SighUp/Signup.dart';

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
          Button(
            title: 'Sign in',
            backgroundColor: primary_color,
            onPress: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (_) => main_screen(
                            current_fragmnet_index: 0,
                          )));
            },
          ),
          const SizedBox(height: 16),
          Image.asset('assets/Images/orline.png'),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 12.0,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/Images/google.png'),
                    const Text(
                      'Sing up with google',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          RichText(
            text: TextSpan(
              text: "Don't have an account?",
              style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
              children: [
                TextSpan(
                    text: " Signup",
                    style:
                        TextStyle(color: primary_color, fontFamily: 'Poppins'),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => const Signup()));
                      })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
