import 'package:flutter/material.dart';

class Loginbar extends StatelessWidget {
  const Loginbar({super.key});

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
                fontSize: 48),
          ),
          Text(
            'AST NEWS',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Alatsi',
                fontWeight: FontWeight.normal,
                fontSize: 48),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 70),
            child: Image(
              image: AssetImage('assets/Images/logo.png'),
              height: 99,
              width: 97,
            ),
          ),
        ],
      ),
    );
  }
}
