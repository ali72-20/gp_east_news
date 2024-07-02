import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../../colors/colors.dart';
import '../../../signup/views/Signup.dart';

class dontHaveAccount extends StatelessWidget {
  const dontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have an account?",
        style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        children: [
          TextSpan(
            text: " Signup",
            style: TextStyle(color: primary_color, fontFamily: 'Poppins'),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Signup()));
              },
          )
        ],
      ),
    );
  }
}
