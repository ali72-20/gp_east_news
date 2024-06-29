import 'package:flutter/cupertino.dart';
import 'app_bar_text.dart';

class app_bar extends StatelessWidget {
  const app_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        app_bar_text(text: 'E', font: 'FasterOne'),
        app_bar_text(text: 'AST NEWS', font: 'Alatsi'),
        const SizedBox(
          width: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Image.asset('assets/logo/logo32.png'),
        ),
      ],
    );
  }
}
