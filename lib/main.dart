import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
} // this widget gets rebuild

class _MyAppState extends State<MyApp> {
  // this stays persistent
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); // this basically tells dart when to change the state and helps in executing build widget again

    var aBool = true;
    if (_questionIndex < _questions.length) {}
    print("Answer Chosen");
  }

  final _questions = const [
    {
      'questionText': 'What is the full form of HTML?',
      'answers': [
        {'text': 'ans1', 'score': 10},
        {'text': 'ans2', 'score': 5},
        {'text': 'ans3', 'score': 3},
        {'text': 'ans4', 'score': 1},
      ],
    },
    {
      'questionText': 'Wich of the following languages is the oldest language?',
      'answers': [
        {'text': 'ans1', 'score': 10},
        {'text': 'ans2', 'score': 5},
        {'text': 'ans3', 'score': 3},
        {'text': 'ans4', 'score': 1},
      ],
    }
  ]; // this is a map which consists of a key value pair

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
