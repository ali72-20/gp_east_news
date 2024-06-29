import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Feature/Profile/presentation_layer/views/userModel.dart';

import '../../../../presentation_layer/UI/colors/colors.dart';
import 'Profile_body.dart';
import 'Profile_header.dart';

class user_profile extends StatelessWidget {
  user_profile({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_color,
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              profile_header(
              )
            ];
          },
          body: Profile_body(
          )),
    );
  }
}
