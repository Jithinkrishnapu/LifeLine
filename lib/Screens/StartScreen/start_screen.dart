import 'package:flutter/material.dart';
import 'package:lifelineindia/Screens/StartScreen/second_screen.dart';
import 'package:lifelineindia/Screens/StartScreen/CommonComponents/up_section.dart';

import 'CommonComponents/down_section.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  bool isSecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UpSection(
            gifPath: 'assets/gifs/dog.gif',
          ),
          DownSection(
            title: 'Life Line India',
            content:
                'Life line india is an application to take care of your pets health',
            navigation: () {
              // setState(() {
              //   isSecond = !isSecond;
              // });

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondScreen()));
            },
          )
        ],
      ),
    );
  }
}
