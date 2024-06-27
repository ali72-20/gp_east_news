import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/Profile/userModel.dart';
import '../colors/colors.dart';


class user_profile extends StatelessWidget {
  user_profile({super.key, required this.user_model});

  final userModel user_model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: primary_color,
                elevation: 16,
                expandedHeight: 150,
                floating: true,
                snap: true,
                flexibleSpace:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Positioned.fill(
                      child: Image.asset(user_model.img  == null ? 'assets/Images/user.png': user_model.img!),
                    ),
                    const SizedBox(height: 16,),
                    Text(user_model.userName, style: const TextStyle(color: Colors.white, fontFamily: 'Poppins'),)
                  ],
                ),
              )
            ];
          },
          body: Container(

          ),
        )
    );
  }
}
