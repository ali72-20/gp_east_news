import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/News/news_model.dart';
import 'package:like_button/like_button.dart';

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
          IconButton(
              onPressed: () {
                setState(() {
                  widget.model.isLiked = !widget.model.isLiked;
                });
              },
              icon: widget.model.isLiked
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_comment)),
          IconButton(
            onPressed: () {
              setState(() {
                widget.model.isSaved = !widget.model.isSaved;
              });
            },
            icon: widget.model.isSaved
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
