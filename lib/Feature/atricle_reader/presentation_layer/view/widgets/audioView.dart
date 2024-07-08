import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import '../../../../../Core/Assets/assets_data.dart';

class audioView extends StatefulWidget {
   audioView({super.key, required this.content});
   String content;
  @override
  State<audioView> createState() => _audioViewState();
}

class _audioViewState extends State<audioView> {
  FlutterTts flutterTts = FlutterTts();
  Icon current = const Icon(Icons.play_arrow);
  bool _isPlaying = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTTs();
  }
  initTTs() async{
    await flutterTts.setLanguage("en-US");
    await flutterTts.setSpeechRate(.5);
    await flutterTts.setPitch(.8);
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: IconButton(
        onPressed: ()async{
          setState(() {
            current =  _isPlaying? Icon(Icons.pause) : Icon(Icons.play_arrow);
            _isPlaying = !_isPlaying;
          });
          if(_isPlaying == true){
            await flutterTts.pause();
          }else{
            await flutterTts.speak(widget.content);
          }

        },
        icon: current
      ),
      actions: [
        TextButton(
            onPressed: () async{
              await flutterTts.stop();
          Navigator.pop(context);
        }, child: Text('close'.tr, style: const TextStyle(color: Colors.black, fontFamily: kPrimaryFont),))
      ],
      title: Text(
        "textReader".tr,
        style: const TextStyle(
            color: Colors.black, fontFamily: kPrimaryFont),
      ),
    );
  }
}
