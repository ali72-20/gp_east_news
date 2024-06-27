import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/Profile/userModel.dart';

import '../colors/colors.dart';
import 'Profile_body.dart';
import 'Profile_header.dart';

class user_profile extends StatelessWidget {
  user_profile({super.key, required this.user_model});

  userModel user_model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_color,
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              profile_header(
                user_model: user_model,
              )
            ];
          },
          body: Profile_body(
            user_mail: user_model.Mail,
          )),
    );
  }
}
