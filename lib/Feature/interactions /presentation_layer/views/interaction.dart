import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gp_east_news/Core/Messages/toast_message.dart';
import 'package:gp_east_news/Feature/Fragmetns/saved/presentation_layer/views/saved_fragment.dart';
import 'package:gp_east_news/Feature/interactions%20/presentation_layer/views/comments_view.dart';

import '../../../../colors/colors.dart';
import '../../../News/Data_layer/Api/news_servieces/news_model.dart';


class intreaction extends StatefulWidget {
  intreaction({super.key, required this.model});

  news_model model;

  @override
  State<intreaction> createState() => _intreactionState();
}

class _intreactionState extends State<intreaction> {
  IconData bookMark = Icons.bookmark_add;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    // widget.model.isLiked = !widget.model.isLiked!;
                    // widget.model.likes += widget.model.isLiked! ? 1 : -1;
                  });
                },
                icon: widget.model.isLiked!
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : const Icon(Icons.favorite),
              ),
              Text(
                widget.model.likes.toString(),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  showBottomSheet(
                    elevation: 16,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: DraggableScrollableSheet(
                          maxChildSize: .5,
                          initialChildSize: .5,
                          minChildSize: .2,
                          builder: (context, scrollController) {
                            return const commentView();
                          },
                        ),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.add_comment),
              ),
              Text(widget.model.comments.toString())
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.model.isSaved = !widget.model.isSaved!;
                if (widget.model.isSaved!) {
                  ToastMessage().showMessage(message: 'Item added');
                }else{
                   ToastMessage().showMessage(message: 'Item Removed');
                }
              },);
              if (widget.model.isSaved!) {
                GlobalsavedNews?.add(widget.model);
              } else {
                GlobalsavedNews?.remove(widget.model);
              }
            },
            icon: widget.model.isSaved!
                ? const Icon(
                    Icons.bookmark_added,
                  )
                : const Icon(Icons.bookmark_add),
          ),
        ],
      ),
    );
  }
}
