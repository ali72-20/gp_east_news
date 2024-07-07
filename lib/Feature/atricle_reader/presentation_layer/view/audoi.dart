import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/app_rounded_blur.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';
import 'package:gp_east_news/Feature/atricle_reader/presentation_layer/view/widgets/audioView.dart';

import '../../data_layer/Api/reader.dart';

class AudoiIcon extends StatefulWidget {
   AudoiIcon({super.key, required this.model});
  news_model model;
  @override
  State<AudoiIcon> createState() => _AudoiIconState();
}

class _AudoiIconState extends State<AudoiIcon> {


  @override
  Widget build(BuildContext context) {
    return AppRoundedButtonBlur(
      onTap: () async{
        await reader(Dio()).getAudio(text: '');
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => const audioView()
        );
      },
      icon: const Icon(
        Icons.audio_file,
        color: Colors.white,
      ),
    );
  }
}
