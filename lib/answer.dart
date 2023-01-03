import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback
      selectHandler; // this means that value stored in this variable should be a function of should point towrds a function, You can also use VoidCallback
      // voidcallback does not take an input and does not return anything
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text(answerText),
          onPressed: selectHandler, // we pass a pointer to onpressed 
          color: Colors.blue,
          textColor: Colors.white,
        ));
  }
}
