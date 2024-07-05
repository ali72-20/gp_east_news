

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/app_rounded_blur.dart';
import 'package:gp_east_news/Core/loading_indecactor%20/data_layer/Dialogs.dart';
import 'package:gp_east_news/Feature/Fragmetns/saved/data_layer/Saved_news.dart';
import 'package:gp_east_news/Feature/Main/Presentation_layer/views/mainScreen.dart';


import '../../../../../Core/Messages/toast_message.dart';


class savedItemIcon extends StatefulWidget {
   savedItemIcon({super.key, required this.articalId});
  String articalId;
  @override
  State<savedItemIcon> createState() => _savedItemIconState();
}

class _savedItemIconState extends State<savedItemIcon> {
  @override
  Widget build(BuildContext context) {
    return AppRoundedButtonBlur(
      onTap: () async{
        await SaveArtical(context);
      },
      icon: const Icon(Icons.bookmark,color: Colors.white,),
    );
  }


  Future<void> SaveArtical(BuildContext context) async {
    dialogs().showLodaingDialog(text: 'Saving', context: context);
    var message;
    try {
       message = await SavedNews(Dio()).save(
          userId: user_model.id, articalId: widget.articalId);
       ToastMessage().showMessage(message: message);
    } catch (e){
      message = e;
      ToastMessage().showMessage(message: "Article is already saved");
    }
    Navigator.pop(context);
  }

}
