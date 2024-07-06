import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gp_east_news/Feature/atricle_reader/presentation_layer/view/widgets/audioSlider.dart';

import '../../../../../Core/Assets/assets_data.dart';

class audioView extends StatefulWidget {
  const audioView({super.key});

  @override
  State<audioView> createState() => _audioViewState();
}

class _audioViewState extends State<audioView> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('close'.tr, style: const TextStyle(color: Colors.black, fontFamily: kPrimaryFont),))
      ],
      title: Text(
        "textReader".tr,
        style: const TextStyle(
            color: Colors.black, fontFamily: kPrimaryFont),
      ),
      content: const audioSlider()
    );
  }
}
