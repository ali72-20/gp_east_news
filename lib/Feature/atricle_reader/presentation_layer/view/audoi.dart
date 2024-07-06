import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/app_rounded_blur.dart';
import 'package:gp_east_news/Feature/atricle_reader/presentation_layer/view/widgets/audioView.dart';

class AudoiIcon extends StatefulWidget {
  const AudoiIcon({super.key});

  @override
  State<AudoiIcon> createState() => _AudoiIconState();
}

class _AudoiIconState extends State<AudoiIcon> {


  @override
  Widget build(BuildContext context) {
    return AppRoundedButtonBlur(
      onTap: () {
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
