import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/app_rounded_blur.dart';

import '../../../../../Core/Messages/toast_message.dart';
import '../../../../Fragmetns/saved/presentation_layer/views/saved_fragment.dart';

class savedItemIcon extends StatefulWidget {
   savedItemIcon({super.key, required this.isSaved});
  bool isSaved;
  @override
  State<savedItemIcon> createState() => _savedItemIconState();
}

class _savedItemIconState extends State<savedItemIcon> {
  @override
  Widget build(BuildContext context) {
    return AppRoundedButtonBlur(
      onTap: () {
        setState(
              () {
            widget.isSaved = !widget.isSaved;
            if (widget.isSaved) {
              ToastMessage().showMessage(message: 'Item added');
            } else {
              ToastMessage().showMessage(message: 'Item Removed');
            }
          },
        );
        // if (widget.isSaved) {
        //   GlobalsavedNews?.add(widget.model);
        // } else {
        //   GlobalsavedNews?.remove(widget.model);
        // }
      },
      icon: widget.isSaved
          ? const Icon(
        Icons.bookmark_added,
        color: Colors.white,
      )
          : const Icon(Icons.bookmark_add, color: Colors.white,),
    );
  }
}
