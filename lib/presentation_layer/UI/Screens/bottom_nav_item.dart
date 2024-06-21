import 'package:flutter/cupertino.dart';

class bottom_nav_item extends StatelessWidget {
  bottom_nav_item({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontFamily: 'Poppins'),
    );
  }
}
