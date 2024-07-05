
import 'package:flutter/material.dart';

import '../../../../../Core/app_rounded_blur.dart';


class likeComponent extends StatefulWidget {
   likeComponent({super.key, required this.isLiked, required this.likes});
   bool isLiked;
   int likes;
  @override
  State<likeComponent> createState() => _likeComponentState();
}

class _likeComponentState extends State<likeComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      AppRoundedButtonBlur(
        icon: widget.isLiked!
            ? const Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : const Icon(Icons.favorite, color: Colors.white),
        onTap: () {
          setState(() {
            widget.isLiked = !widget.isLiked;
            widget.likes += widget.isLiked ? 1 : -1;
          });
        },
      ),
      const SizedBox(width: 8,),
      Text(
        widget.likes.toString(),
        style: const TextStyle(color:Colors.white, fontFamily: 'Poppins'),
      ),
    ],);
  }
}
