import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  const Result({
    Key key,
    this.totalScore,
    this.resetQuiz,
  }) : super(key: key);

  String get resultPhrase {
    var resultText;
    if (totalScore <= 8) {
      resultText = "You're Awesome!";
    } else if (totalScore <= 4) {
      resultText = "You're Good!";
    } else if (totalScore <= 2) {
      resultText = "You're kinda bad!";
    } else {
      resultText = "You're freaking amazing!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetQuiz,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
