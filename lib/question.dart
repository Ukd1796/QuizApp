import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; // final keyword addition tells flutter that this cannot be changed internally

  Question(this.questionText); // this is a constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // this helps text to take the full width of the container
      margin:EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

