import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}// this widget gets rebuild
class _MyAppState extends State<MyApp> { // this stays persistent
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
         _questionIndex = _questionIndex + 1;
    }); // this basically tell dart when to change the state and helps in executing build widget again
    print("Answer Chosen");
  }

  var questions = [
    'What is the full form of HTML?',
    'Wich of the following languages is the oldest language?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text(questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed:
                _answerQuestion, // this passes a pointer to function and only to be executed when the user presses the button
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 4'),
            onPressed: _answerQuestion,
          ),
        ]),
      ),
    );
  }
}
