import 'package:flutter/material.dart';

class Top_Bar extends StatelessWidget {
  const Top_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff03416E),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'E',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'FasterOne',
                fontWeight: FontWeight.normal,
                fontSize: 40),
          ),
          Text(
            'AST NEWS',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Alatsi',
                fontWeight: FontWeight.normal,
                fontSize: 40),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Image(
              image: AssetImage('assets/logo/logo64.png'),
            ),
          ),
        ],
      ),
    );
  }
}
