import 'dart:ffi';
import 'dart:html';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; // this means that value stored in this variable should be a function of should point towrds a function, You can also use VoidCallback
  Answer();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text('Answer 1'),
          onPressed: null,
          color: Colors.blue,
        ));
  }
}
