import 'package:flutter/material.dart';

import '../widget/body_background.dart';
import 'log_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    goToLogIn();
  }

  void goToLogIn() {
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>const LogInScreen(),)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BodyBackground(
        child: Center(
          child: Image.network('https://cdn.kwork.com/files/portfolio/t3/18/c13777fa953ab5004c33dc810ac951473b39de87-1715699787.jpg'),
        ),
      ),
    );
  }
}
