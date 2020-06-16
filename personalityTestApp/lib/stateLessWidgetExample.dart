import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void onAnswerPress()
  {
    print('Answer selected!');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text('The first question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: onAnswerPress,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: onAnswerPress,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: onAnswerPress,
            ),
          ],
        ),
      ),
    );
  }
}
