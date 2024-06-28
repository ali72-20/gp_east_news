import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
class intreaction extends StatefulWidget {
  const intreaction({super.key});

  @override
  State<intreaction> createState() => _intreactionState();
}

class _intreactionState extends State<intreaction> {
  IconData bookMark = Icons.bookmark_add;
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
          IconButton(onPressed: (){}, icon: const Icon(Icons.add_comment)),
          IconButton(onPressed: (){
            setState(() {
              bookMark = bookMark == Icons.bookmark_add ? Icons.bookmark_added : Icons.bookmark_add;
            });
          }, icon:  Icon(bookMark)),
        ],
      ),
    );
  }
}
