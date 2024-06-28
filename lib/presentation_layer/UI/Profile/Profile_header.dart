
import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/Profile/userModel.dart';

import '../colors/colors.dart';

class profile_header extends StatefulWidget {
   profile_header({super.key, required this.user_model});
  final userModel user_model;
  @override
  State<profile_header> createState() => _profile_headerState();
}

class _profile_headerState extends State<profile_header> {
  IconData followIcon = Icons.add;
  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      backgroundColor: primary_color,
      elevation: 16,
      expandedHeight: 204,
      flexibleSpace: Container(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(widget.user_model.img == null
                  ? 'assets/Images/user.png'
                  : widget.user_model.img!),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("@${widget.user_model.userName} ", style: const TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16),),
                const Icon(Icons.verified_rounded, color: Colors.blue,)
              ],),
            Container(
              alignment: Alignment.bottomCenter,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    followIcon =
                    followIcon == Icons.add ? Icons.check : Icons.add;
                  });
                },
                style: const ButtonStyle(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Follow",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Poppins'),
                    ),
                    Icon(
                      followIcon,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
