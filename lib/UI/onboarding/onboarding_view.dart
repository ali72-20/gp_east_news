import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'onboaring_model.dart';

class onboarding_view extends StatefulWidget {
  const onboarding_view({super.key});

  @override
  State<onboarding_view> createState() => _onboarding_viewState();
}

class _onboarding_viewState extends State<onboarding_view> {
  final controller = onboarind_model();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03416E),
      body: PageView.builder(
        itemCount: controller.items.length,
        controller: pageController,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 64),
                   child: Image.asset(
                    controller.items[index].image,
                                   ),
                 ),
              Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Text(
                  controller.items[index].title,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 24, fontFamily: 'Poppins'),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
