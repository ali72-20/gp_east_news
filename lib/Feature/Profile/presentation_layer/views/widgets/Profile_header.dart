import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../../colors/colors.dart';
import '../../../../Main/Presentation_layer/views/mainScreen.dart';


class profile_header extends StatefulWidget {
   profile_header({super.key});
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
      flexibleSpace: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(user_model.img == null
                ? 'assets/Images/user.png'
                : user_model.img!),
          ),
          Positioned(
            top: 150,
            left: MediaQuery.of(context).size.width / 2 - 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("@${user_model.userName} ", style: const TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16),),
                const Icon(Icons.verified_rounded, color: Colors.blue,)
              ],),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  followIcon =
                  followIcon == Icons.add ? Icons.check : Icons.add;
                });
                if(followIcon ==Icons.check ){
                  Fluttertoast.showToast(
                      backgroundColor: primary_color,
                      msg: "You now following ${user_model.userName}",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }else{
                  Fluttertoast.showToast(
                      backgroundColor: primary_color,
                      msg: "You now not following ${user_model.userName}",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }
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
          ),
        ],
      ),

    );
  }
}