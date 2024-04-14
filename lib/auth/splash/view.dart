import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app/view/home_screen.dart';
import '../../core/design/app_image.dart';
import '../../core/logic/helper_methods.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3,), () {
      toGetNavigate(const HomeScreen(),);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffDD8560),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppImage(
                "assets/images/splash_suits.png",
                height: 100,
                width: 100,
              ),
              SizedBox(
                width: 16,
              ),
              AppImage(
                "assets/images/suits_text.png",
                height: 192,
                width: 136,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
