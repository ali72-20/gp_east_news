import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'interaction_component.dart';

class intreaction extends StatefulWidget {
  const intreaction({super.key});

  @override
  State<intreaction> createState() => _intreactionState();
}

class _intreactionState extends State<intreaction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LikeButton(
            size: 24,
            likeBuilder: (isLiked){
               return isLiked?
                   const Icon(Icons.favorite, color: Colors.red,): const Icon(Icons.favorite);
            },
            countBuilder: (likeCounter, isLiked, text){
              return Text(text, style: TextStyle(
                color: isLiked ? Colors.red : Colors.grey,
              ),);
            }
          ),
          interaction_component(act_icon: Icons.comment),
          interaction_component(act_icon: Icons.bookmark),
        ],
      ),
    );
  }
}
