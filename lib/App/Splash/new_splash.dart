import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:repair_home/App/SignIn/sign_in_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/logo.png',
                color: Colors.white,
              ),
            ),
            Text(
              'REPAIR HOME',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'goboldthin',
                color: Colors.white,
              ),
            )
          ],
        ),
        nextScreen: SignInPage(),
        splashTransition: SplashTransition.scaleTransition,
        duration: 3000,
        backgroundColor: Colors.indigo.shade900,
      ),
    );
  }
}
