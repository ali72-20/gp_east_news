import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inputComp.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(children: [
        inputComp(lableText: "Email",sufIcone: Icons.mail),
        inputComp(lableText: "Password", sufIcone: Icons.password),
      ],
      ),
    );
  }
}
