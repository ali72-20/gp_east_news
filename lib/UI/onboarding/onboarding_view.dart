import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/ConstantKeies/ConstKey.dart';
import 'package:gp_east_news/UI/Screens/LogIn.dart';
import 'package:gp_east_news/UI/colors/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboaring_model.dart';

class onboarding_view extends StatefulWidget {
  const onboarding_view({super.key});

  @override
  State<onboarding_view> createState() => _onboarding_viewState();
}

class _onboarding_viewState extends State<onboarding_view> {
  final controller = onboarind_model();
  final pageController = PageController();
  bool isFinalPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_color,
      bottomSheet: Container(
        decoration: const BoxDecoration(
        ),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: isFinalPage
            ? getStartedButtton()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () =>
                        pageController.jumpToPage(controller.items.length - 1),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: primary_color, fontFamily: 'Poppins'),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: controller.items.length,
                    onDotClicked: (index) => pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn),
                    effect: WormEffect(
                      activeDotColor: primary_color,
                    ),
                  ),
                  TextButton(
                    onPressed: () => pageController.nextPage(
                        duration: const Duration(
                          milliseconds: 600,
                        ),
                        curve: Curves.easeIn),
                    child: Text(
                      'next',
                      style: TextStyle(
                          color: primary_color, fontFamily: 'Poppins'),
                    ),
                  ),
                ],
              ),
      ),
      body: Container(
        child: PageView.builder(
          onPageChanged: (index) => setState(() {
            isFinalPage = index == controller.items.length - 1;
          }),
          itemCount: controller.items.length,
          controller: pageController,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(controller.items[index].image),
                const SizedBox(height: 48),
                Text(
                  controller.items[index].title,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),
                ),
                const SizedBox(height: 48),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget getStartedButtton() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
      ),

      width: MediaQuery.of(context).size.width * .9,
      child: TextButton(
        onPressed: () async{
          
          final pres = await SharedPreferences.getInstance();
          pres.setBool(constKey.onBoaring, true);
          if(!mounted) return;

          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const Login()));
        },
        child:  Text(
          "Get Start",
          style: TextStyle(color: primary_color, fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
