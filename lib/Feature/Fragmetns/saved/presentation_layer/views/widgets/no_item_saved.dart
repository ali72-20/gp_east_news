import 'package:flutter/cupertino.dart';

class No_Items_Saved extends StatelessWidget {
  const No_Items_Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "No items saved",
        style: TextStyle(fontSize: 32, fontFamily: 'Poppins'),
      ),
    );
  }
}