import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Feature/Forms/presentation_layer/SignIn/views/LogIn.dart';

import '../../../../../../colors/colors.dart';
import '../../../signup/views/Signup.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Have an account?",
        style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        children: [
          TextSpan(
            text: " Login",
            style: TextStyle(color: primary_color, fontFamily: 'Poppins'),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
          )
        ],
      ),
    );
  }
}
