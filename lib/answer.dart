import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
final Function selectHandaler;
Answer(this.selectHandaler);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: double.infinity,
      child:  RaisedButton(
              child: Text("Answer1"),
              onPressed: selectHandaler,
              ),
    );
  }
}