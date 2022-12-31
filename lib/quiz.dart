import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int questionIndex;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText'].toString()),
      ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        // we add that to let dart know that we are accessing a list of string because dart cannot do it automatically
        return Answer(answerQuestion, answer);
      }).toList() // converts the whole thing to a new list
    ]);
  }
}
