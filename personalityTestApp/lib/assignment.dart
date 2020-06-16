import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestAppState();
  }
}

class TestAppState extends State<TestApp> {
  final List<String> _texts = [
    'Sample text 1',
    'Sample text 2',
    'Sample text 3'
  ];
  int _textIndex = 0;

  void _onChangeText() {
    setState(() {
      _textIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Assignment 1'),
      ),
      body: Column(
        children: <Widget>[
          CustomText(_texts[_textIndex]),
          TextControl(_onChangeText)
        ],
      ),
    ));
  }
}

class TextControl extends StatelessWidget {
  final Function doChangeText;
  TextControl(this.doChangeText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: RaisedButton(
        onPressed: doChangeText,
        child: Text('Next'),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String displayText;
  CustomText(this.displayText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        displayText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
