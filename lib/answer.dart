import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonTitle;
  final Function onPressedHandler;

  const Answer({
    Key key,
    this.onPressedHandler,
    this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(buttonTitle),
        onPressed: onPressedHandler,
      ),
    );
  }
}
