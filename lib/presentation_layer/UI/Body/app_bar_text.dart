import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/colors/colors.dart';

class app_bar_text extends StatelessWidget {
  app_bar_text({super.key, required this.text, required this.font});

  String text;
  String font;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: font, fontSize: 24, color: primary_color),
    );
  }
}
