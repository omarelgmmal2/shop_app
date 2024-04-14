import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingScreen> {
  final pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
}
