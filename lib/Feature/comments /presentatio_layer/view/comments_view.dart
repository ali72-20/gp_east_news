import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gp_east_news/Core/Assets/assets_data.dart';
import 'package:gp_east_news/Feature/comments%20/presentatio_layer/view/widgets/commentsListView.dart';

import '../../../../colors/colors.dart';
import '../../data_layer/model/commentModel.dart';

class commentView extends StatefulWidget {
  commentView({super.key, required this.commentsList});

  List<commentModel> commentsList;

  @override
  State<commentView> createState() => _commentViewState();
}

class _commentViewState extends State<commentView> {
  final comment = TextEditingController();
  late List<commentModel> list;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: Container(
        color: Colors.white,
        height: 200,
        child: Stack(
          children: [
            Positioned(
              child: commentListView(
                list: widget.commentsList,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 25,
                      width: 260,
                      child: TextField(
                        controller: comment,
                        // maxLines: 4,
                        decoration:  InputDecoration(
                            hintText: 'Add a comment'.tr,
                            border: InputBorder.none),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.send))
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
