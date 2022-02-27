import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifelineindia/Constants/colours.dart';

class UserModules extends StatelessWidget {
  const UserModules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    kGradient1,
                    kGradient2,
                  ]),
                ),
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Choose your role',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 70.0),
                          child: Text(
                            'Select your role to proceed to the homepage',
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        UserModuleWidget(
                          imagePath: 'doc.gif',
                          role: 'Volunteer',
                        ),
                        UserModuleWidget(
                          imagePath: 'guest.gif',
                          role: 'Guest',
                        ),
                        UserModuleWidget(
                          imagePath: 'ngo.gif',
                          role: 'NGO',
                        )
                      ],
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Divider(
                      color: Colors.white,
                      thickness: 5,
                      indent: 135,
                      endIndent: 135,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class UserModuleWidget extends StatelessWidget {
  final String? imagePath;
  final String? role;
  const UserModuleWidget({Key? key, this.imagePath, this.role})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[700],
          radius: 30,
          backgroundImage: AssetImage(
            'assets/gifs/$imagePath',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            role!,
            style: const TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontSize: 15,
                height: 1),
          ),
        )
      ],
    );
  }
}
