import 'dart:math';

import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () => {
          setState(() => {
            ballNumber = getRandomNumber(),
          }),
          print(ballNumber),
        },
        child: Image.asset('images/ball$ballNumber.png')
      ),
    );
  }

  int getRandomNumber() {
    return random.nextInt(5) + 1;
  }
}