import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:whatsaap/Pages/Chats%20Page.dart';
import 'package:whatsaap/Pages/HomePage.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash:Image.asset('asset/WhatsApp Image 2021-02-17 at 8.16.47 PM.jpeg') , nextScreen: HomePage(),
    duration:3,splashIconSize: 200,

    );
  }
}
