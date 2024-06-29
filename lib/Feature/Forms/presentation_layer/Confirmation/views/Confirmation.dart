import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../colors/colors.dart';
import '../../../../category/presentation_layer/views/category_list.dart';
import '../../components /Button.dart';
import '../../components /TextComp.dart';
import '../../components /Top_Bar.dart';
import 'widgets/ConfriamrionCodeInput.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: primary_color,),
      body: SingleChildScrollView(
        child: SafeArea(
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
      ),
    );
  }


}
