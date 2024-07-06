import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/Assets/assets_data.dart';
import 'package:gp_east_news/Core/app_rounded_blur.dart';

import '../comments_view.dart';

class commentItemComponent extends StatefulWidget {
   commentItemComponent({super.key, required this.comments});
  int comments;
  @override
  State<commentItemComponent> createState() => _commentItemComponentState();
}

class _commentItemComponentState extends State<commentItemComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppRoundedButtonBlur(
          icon: const Icon(Icons.add_comment, color: Colors.white,),
          onTap: () {
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
        ),
        const SizedBox(width: 8,),
        Text(widget.comments.toString(), style: const TextStyle(color: Colors.white, fontFamily: kPrimaryFont),),
      ],
    );
  }
}
