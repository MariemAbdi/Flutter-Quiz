import 'package:flutter/material.dart';
import 'package:my_quiz/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key,required this.questions, required this.questionIndex, required this.onPressed});

  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function onPressed;


@override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

          Question(questionText: questions[questionIndex]['questionText'].toString()),

          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
          return Answer(onPressed: ()=> onPressed(answer['score']), answerText: (answer['text'] as String));
        }).toList(),
      ],
    );
  }
}
