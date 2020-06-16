import 'package:chandugame/quiz.dart';
import 'package:chandugame/result.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore=0;

  void _onAnswerPress(int score) {
    _totalScore+=score;
   
    setState(() {
      _questionIndex++;
    });
  }
    void _resetApp() {

    setState(() {
      _questionIndex = 0;
      _totalScore=0;
    });
  }

  final questions = const [
    {
      'questionText': 'What is your favourite color ?',
      'answers': [{'text':'Red','score':10}, {'text':'Blue','score':5},  {'text':'Green','score':3},  {'text':'White','score':1}],
    },
    {
      'questionText': 'Who is your favourite actor ?',
      'answers': [{'text':'Mohanlal','score':10},{'text':'Mamootty','score':5} ,{'text':'Dileep','score':3},{'text':'Tovino','score':1}],
    },
    {
      'questionText': 'Who is favorite character ?',
      'answers': [{'text':'Superman','score':1} , {'text':'Ironman','score':5},{'text':'Batman','score':10}, {'text':'Spiderman','score':5}],
    }
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(onAnswerPress: _onAnswerPress, questionIndex: _questionIndex, questionsList: questions,)
            :Result(totalScore: _totalScore,handleReset: _resetApp,),
      ),
    );
  }
}
