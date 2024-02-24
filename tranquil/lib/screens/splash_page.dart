import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tranquil/screens/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: //Lottie.asset('assets/images/waves.json'),
          Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset('images/logo_tranquil.png'),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Tranquil',
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
      backgroundColor: const Color(0xff151a2f),
      splashIconSize: 400,
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: const Duration(seconds: 2),
      nextScreen: const LoginPage(),
    );
  }
}
