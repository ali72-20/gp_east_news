import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../News_category/category_list.dart';
import '../../colors/colors.dart';
import '../FormComponent /Button.dart';
import '../FormComponent /TextComp.dart';
import '../FormComponent /Top_Bar.dart';
import 'ConfriamrionCodeInput.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: primary_color,),
      body: SafeArea(
        child: Column(
          children: [
            const Top_Bar(),
            const SizedBox(height: 48,),
            TextComp(message: "THE CONFIRMATION MAIL HAS BEEN SENT",
              message_color: Colors.black,
              size: 13,),
            const SizedBox(height: 48,),
            TextComp(message: "Please Enter The 6-digits code",
                message_color: gray,
                size: 12),
            const SizedBox(height: 32,),
            const ConfirmationCodeInput(),
            const SizedBox(height: 32),
            Button(title: "Confirm", backgroundColor: primary_color, onPress: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => CategoryList()));
            },),
          ],),
      ),
    );
  }


}
