import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/Forms/FormComponent%20/Button.dart';
import 'package:gp_east_news/UI/Forms/FormComponent%20/TextComp.dart';
import 'package:gp_east_news/UI/Forms/FormComponent%20/Top_Bar.dart';
import 'package:gp_east_news/UI/Forms/SighUp/ConfriamrionCodeInput.dart';
import 'package:gp_east_news/UI/colors/colors.dart';

import '../../News_category/category_list.dart';

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
            Top_Bar(),
            TextComp(message: "THE CONFIRMATION MAIL HAS BEEN SENT",
              message_color: Colors.black,
              size: 16,),
            TextComp(message: "Please Enter The 6-digits code",
                message_color: gray,
                size: 12),
            const ConfirmationCodeInput(),
        
            Button(title: "Confirm", backgroundColor: primary_color, onPress: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => CategoryList()));
            },),
          ],),
      ),
    );
  }


}
