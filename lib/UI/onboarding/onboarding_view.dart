import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/colors/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../ConstantKeies/ConstKey.dart';
import '../Login/LogIn.dart';
import 'onboaring_model.dart';

class onboarding_view extends StatefulWidget {
  const onboarding_view({super.key});

  @override
  State<onboarding_view> createState() => _onboarding_viewState();
}

class _onboarding_viewState extends State<onboarding_view> {
  final controller = onboarind_model();
  late final pageController;
  bool isFinalPage = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_color,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: PageView.builder(
                itemCount: controller.items.length,
                onPageChanged: (index) => setState(
                  () {
                    isFinalPage = index == controller.items.length - 1;
                  },
                ),
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
        ],

      ),
    );
  }

  Widget getStartedButtton() {
    return Container(
      decoration: BoxDecoration(
        color: primary_color,
        borderRadius: BorderRadius.circular(12),
      ),
      width: MediaQuery.of(context).size.width * 9,
      child: TextButton(
        onPressed: () async {
          final pres = await SharedPreferences.getInstance();
          pres.setBool(constKey.onBoaring, true);
          if (!mounted) return;

          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const Login()));
        },
        child: const Text(
          "Get Start",
          style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
