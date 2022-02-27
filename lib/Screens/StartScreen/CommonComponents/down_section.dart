import 'package:flutter/material.dart';

import '../../../Constants/colours.dart';

class DownSection extends StatelessWidget {
  final String? title;
  final String? content;
  final void Function()? navigation;
  final bool isSecondScreen;
  const DownSection(
      {Key? key,
      this.title,
      this.content,
      this.navigation,
      this.isSecondScreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title!,
                  style: TextStyle(fontSize: 26),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  child: Text(
                    content!,
                    maxLines: 3,
                    style: const TextStyle(height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: kPrimaryColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor:
                            isSecondScreen ? kPrimaryColor : Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.grey,
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: navigation,
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xffF05454),
                          Color(0xffF15A57),
                        ]),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 20),
                    )),
                  ),
                ),
                Divider(
                  color: kSecondaryColor,
                  thickness: 7,
                  indent: 135,
                  endIndent: 135,
                )
              ]),
        ));
  }
}
