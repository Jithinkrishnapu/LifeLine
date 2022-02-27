import 'package:flutter/material.dart';

import '../../../Constants/colours.dart';

class UpSection extends StatelessWidget {
  final String? gifPath;
  const UpSection({Key? key, this.gifPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          kGradient1,
          kGradient2,
        ])),
        child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(gifPath!)),
      ),
    );
  }
}
