import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(
              buttonTitle: 'A',
              onPressedHandler: _answerQuestion,
            ),
            Answer(
              buttonTitle: 'B',
              onPressedHandler: _answerQuestion,
            ),
            Answer(
              buttonTitle: 'C',
              onPressedHandler: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
