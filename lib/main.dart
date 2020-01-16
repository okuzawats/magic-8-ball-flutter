import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _ballNumber = 0;
  int get _actualBallNumber => _ballNumber + 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: FlatButton(
        onPressed: () {
          setState(() {
            _ballNumber = Random().nextInt(5);
          });
        },
        child: Image.asset('images/ball$_actualBallNumber.png'),
      )),
    );
  }
}
