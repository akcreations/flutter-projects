import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  

  final Function onAnswerPress;
  final int questionIndex;
  final List<Map<String,Object>> questionsList;

  Quiz({@required this.onAnswerPress,@required this.questionIndex, @required this.questionsList});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:Column(
                children: [
                  Question(questionsList[questionIndex]['questionText']),
                  ...(questionsList[questionIndex]['answers'] as List<Map<String,Object>>)
                      .map((answer) {
                    return Answer(()=>onAnswerPress(answer['score']), answer['text']);
                  }).toList(),
                ],
              ),
    );
  }
}
 

