import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/ConstantKeies/ConstKey.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'UI/Screens/SplashScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  final onboaring = pref.getBool(constKey.onBoaring)??false;
  runApp(MyApp(onBoarding: onboaring));

}

class MyApp extends StatelessWidget {
  final bool onBoarding;
  MyApp({super.key, required this.onBoarding});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(onboaring:onBoarding),
    );
  }
}
