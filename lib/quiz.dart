import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final Function onPressedHandler;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  const Quiz(
      {Key key,
      @required this.onPressedHandler,
      @required this.questions,
      @required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((question) {
          return Answer(
            buttonTitle: question['text'],
            onPressedHandler: () => onPressedHandler(question['score']),
          );
        }).toList()
      ],
    );
  }
}
