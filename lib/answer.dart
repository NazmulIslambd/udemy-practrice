import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
final Function selectHandaler;
// final String answerText;
 Answer(this.selectHandaler,//this.answerText
 );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: double.infinity,
      child:  RaisedButton(
              child: Text(//answerText
              'anser1'
              ),
              onPressed: selectHandaler,
              color: Colors.blueAccent,
              ),
    );
  }
}