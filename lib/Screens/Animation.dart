import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'Home.dart';

class MyAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ColorizeAnimatedTextKit(
            isRepeatingAnimation: true,
            text: [
              "Created By",
            ],
            speed: Duration(milliseconds: 200),
            textStyle: TextStyle(
                fontSize: 20.0,
                fontFamily: "Pacifico",
                fontWeight: FontWeight.bold),
            colors: [
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.purple
            ],
          ),
          TyperAnimatedTextKit(
            isRepeatingAnimation: false,
            text: ["Generation 2K"],
            speed: Duration(milliseconds: 250),
            alignment: Alignment.center,
            textStyle: TextStyle(fontSize: 50.0, fontFamily: "Stat"),
            onFinished: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ],
      ),
    ));
  }
}
