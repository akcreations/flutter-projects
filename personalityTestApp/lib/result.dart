import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function handleReset;
  Result({this.totalScore,this.handleReset});

  String get resultText {
    String resultText;

    if (totalScore <= 3) {
      resultText = 'You are awesome and innocent';
    } else if (totalScore <= 9) {
      resultText = 'You have good personality';
    } else if (totalScore <= 15) {
      resultText = 'You are both naughty and good person';
    } else {
      resultText = 'You are so bad and violent person';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:EdgeInsets.all(20),
        child: Column(
      children: [
        Center(
          child: Text(
            resultText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        FlatButton(
          child: Text('Reset the app'),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: handleReset,
        )
      ],
    ));
  }
}
