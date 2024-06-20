import 'package:flutter/cupertino.dart';


import '../colors/colors.dart';
import 'app_bar_text.dart';

class app_bar extends StatelessWidget {
  const app_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: primary_color,
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12))),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          app_bar_text(text: 'E', font: 'FasterOne'),
          app_bar_text(text: 'AST NEWS', font: 'Alatsi'),
          const SizedBox(
            width: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Image.asset('assets/logo/logo32.png'),
          ),
        ],
      ),
    );
  }
}
