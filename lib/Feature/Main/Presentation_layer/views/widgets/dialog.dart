import 'package:flutter/material.dart';
import '../../../../Forms/presentation_layer/SignIn/views/LogIn.dart';
import '../../../../../colors/colors.dart';

class logoutDialog extends StatelessWidget {
  const logoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(Icons.logout),
      title: const Text('Logout', style: TextStyle(fontFamily: 'Poppins'),),
      content:
      const Text('You need to logout', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Poppins')),
      actions: [
        TextButton(onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const Login()),
                (Route<dynamic> route) => false,
          );
        },child:  Text('Logout', style: TextStyle(fontFamily: 'Poppins', color: primary_color),),),
      ],
    );
  }
}
