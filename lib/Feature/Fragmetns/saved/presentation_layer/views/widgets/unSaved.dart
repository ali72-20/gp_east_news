import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/Assets/assets_data.dart';
import 'package:gp_east_news/Feature/Fragmetns/saved/data_layer/Provider/savedNewsListProvider.dart';
import 'package:gp_east_news/Feature/Fragmetns/saved/presentation_layer/views/saved_fragment.dart';
import 'package:gp_east_news/Feature/Fragmetns/saved/presentation_layer/views/widgets/savedNewsView.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';

import '../../../../../../Core/Messages/toast_message.dart';
import '../../../../../../Core/loading_indecactor /data_layer/Dialogs.dart';
import '../../../../../../colors/colors.dart';
import '../../../data_layer/Api/Saved_news.dart';
import '../../../../../Main/Presentation_layer/views/mainScreen.dart';

class unSaved extends StatefulWidget {
  unSaved({super.key, required this.articleId});

  String articleId;
  @override
  State<unSaved> createState() => _unSavedState();
}

class _unSavedState extends State<unSaved> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      content: const Text("You need to un save this article", style: TextStyle(fontFamily: kPrimaryFont,color: Colors.black), textAlign: TextAlign.center,),
      actions: [
         TextButton(onPressed: () async{
            await unSaveArtical(context);
            Navigator.of(context).pop((true));
          }, child: Text('un save', style: TextStyle(fontFamily: kPrimaryFont, color: primary_color),)),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child:  Text('close', style: TextStyle(fontFamily: kPrimaryFont, color: primary_color)))
      ],
    );
  }



  Future<void> unSaveArtical(BuildContext context) async {
    dialogs().showLodaingDialog(text: 'unSaving', context: context);
    var message;
    try {
      message = await SavedNews(Dio())
          .unsave(userId: user_model.id, articalId: widget.articleId);

      ToastMessage().showMessage(message: message);
    } catch (e) {
      message = e;
      ToastMessage().showMessage(message: "Error");
    }
    Navigator.pop(context);
  }
}