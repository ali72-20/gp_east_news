import 'package:flutter/material.dart';
import 'package:gp_east_news/Feature/Splash/presentation_layer/views/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Core/ConstantKeies/ConstKey.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  final onboaring = pref.getBool(constKey.onBoaring)??false;
  runApp(MyApp(onBoarding: onboaring));

}
String AppThem = 'light';
class MyApp extends StatelessWidget {
  final bool onBoarding;
  MyApp({super.key, required this.onBoarding});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Splashscreen(onboaring:onBoarding),
    );
  }
}

ThemeData them(){
   if(AppThem == 'Light') return ThemeData.light();
   else if(AppThem == "Dark") return ThemeData.dark();
   else return ThemeData.light();
}
