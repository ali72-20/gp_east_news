import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginbar extends StatelessWidget {
  const Loginbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      child: Container(
        color: const Color(0xff03416E),
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
              padding: EdgeInsets.only(bottom: 60),
              child: Image(
                image: AssetImage('assets/logo.png'),
                height: 99,
                width: 97,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
