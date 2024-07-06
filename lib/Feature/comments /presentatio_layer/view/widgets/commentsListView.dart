import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/Assets/assets_data.dart';
import 'package:gp_east_news/Core/Messages/toast_message.dart';
import 'package:gp_east_news/Feature/Main/Presentation_layer/views/mainScreen.dart';
import 'package:gp_east_news/Feature/comments%20/data_layer/Api/deletComment.dart';
import 'package:gp_east_news/Feature/comments%20/presentatio_layer/view/widgets/comment_item_view.dart';
import '../../../data_layer/model/commentModel.dart';

class commentListView extends StatefulWidget {
   commentListView({super.key, required this.list});
   List<commentModel> list;
  @override
  State<commentListView> createState() => _commentListViewState();
}


class _commentListViewState extends State<commentListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context,index){
         return user_model.id == widget.list[index].authorId ?
             Dismissible(
               onDismissed: (direction){
                 if(direction == DismissDirection.endToStart) {
                   setState(() {
                     widget.list.removeAt(index);
                   });
                 }
               },
               confirmDismiss: (DismissDirection direction){
                 if(direction == DismissDirection.endToStart){
                   return showDialog(context: context, builder: (BuildContext context) {
                      return  AlertDialog(
                        title: const Text('Delete comment', style: TextStyle(fontFamily: kPrimaryFont),),
                        content: const Text('You need to delete comment!!'),
                        actions: [
                          TextButton(onPressed: () async{
                           bool result =  await DeleteComment(Dio()).delete(authorId: user_model.id, commentId: widget.list[index].id);
                           if(result){
                             ToastMessage().showMessage(message: 'Comment deleted');
                             Navigator.of(context).pop((true));
                           }
                          }, child: const Text('Delete'),)
                        ],
                      );
                   });
                 }else{
                   return showDialog(context: context, builder: (BuildContext context) {
                     return   AlertDialog(
                       title: const Text('Edit comment', style: TextStyle(fontFamily: kPrimaryFont),),
                       content: const Text('You need to Edite comment!!'),
                       actions: [
                         TextButton(onPressed: () async{
                           bool result =  await DeleteComment(Dio()).delete(authorId: user_model.id, commentId: widget.list[index].id);
                           if(result){
                             ToastMessage().showMessage(message: 'Comment Edit');
                             Navigator.of(context).pop((true));
                           }
                         }, child: const Text('Edit'),)
                       ],
                     );
                   });
                 }
               },
               key: ValueKey<commentModel>(widget.list[index]),
               child: commentItemView(model: widget.list[index],),
               background: Container(
                 color: Colors.blueAccent,
                 child: const Icon(Icons.edit,color: Colors.white,),
                 alignment: Alignment.centerLeft,
               ),
               secondaryBackground: Container(
                 color: Colors.red,
                 alignment: Alignment.centerRight,
                 child: const Icon(Icons.delete,color: Colors.white,)
               ),
             )
             :SingleChildScrollView(child: commentItemView(model: widget.list[index],));
      },
    );
  }
}
