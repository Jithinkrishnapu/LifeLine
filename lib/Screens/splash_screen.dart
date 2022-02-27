import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lifelineindia/Constants/colours.dart';
import 'package:lifelineindia/Screens/StartScreen/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

// gotoNextScreen() {
//   return ;
// }

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = const Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const StartScreen()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Center(
        child: const Text(
          'Life Line India',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
