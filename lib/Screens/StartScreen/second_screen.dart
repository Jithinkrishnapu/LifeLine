import 'package:flutter/material.dart';
import 'package:lifelineindia/Screens/StartScreen/CommonComponents/up_section.dart';
import 'package:lifelineindia/Screens/UserModules/user_modules.dart';

import 'CommonComponents/down_section.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const UpSection(
            gifPath: 'assets/gifs/doctor.gif',
          ),
          DownSection(
            isSecondScreen: true,
            title: 'Doctors at fingertip',
            content:
                'Life line india connects doctors and volunteers so they can report cases and do necessary things fast',
            navigation: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserModules()));
            },
          )
        ],
      ),
    );
  }
}
