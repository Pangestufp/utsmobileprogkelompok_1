import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_manajemen_umkm/pages/authentication/login.dart';
import 'package:app_manajemen_umkm/pages/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child:
        LottieBuilder.asset("assets/lotties/loading.json",),
      ),
      nextScreen: Login(),
      splashIconSize: 200,
      backgroundColor: Colors.white,
    );
  }
}
