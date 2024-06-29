import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../presentation_layer/UI/Forms/Login/LogIn.dart';
import '../../../on_boarding/presentation_layer/views/onboarding_view.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({super.key, required this.onboaring});

  bool onboaring;

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => widget.onboaring ?const Login() : const onboarding_view()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03416E),
      body: Center(
        child: Image.asset(
          'assets/logo/logo128.png',
        ),
      ),
    );
  }
}
