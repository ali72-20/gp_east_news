import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/Assets/assets_data.dart';
import 'package:gp_east_news/Feature/comments%20/data_layer/model/commentModel.dart';

class commentItemView extends StatelessWidget {
   commentItemView({super.key, required this.model});
  commentModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(model.author, style: const TextStyle(color:Colors.black, fontFamily: kPrimaryFont),),
         const SizedBox(height: 4,),
         Text(model.text, style: const TextStyle(color:Colors.black, fontFamily: kPrimaryFont,),maxLines: 2,),
    ],);
  }
}
