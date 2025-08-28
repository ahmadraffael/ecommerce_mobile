import 'package:ecommerce_mobile/features/onboarding/on_boarding.dart';
import 'package:ecommerce_mobile/features/preference/preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // You can add a delay here if you want to show the splash screen for a few seconds
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the next screen after the delay
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const OnBoarding()),
            (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.primaryColor,
      body: Center(
        child: SvgPicture.asset(MainAssets.olxLogo, width: 120,)),
    );
  }
}