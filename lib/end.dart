import 'package:flutter/material.dart';

class End extends StatelessWidget {
  final int resultScore;
  End(this.resultScore);

  String get scorePhase {
    String showText = 'YOu did it';
    if (resultScore <= 10) {
      showText = 'it\'s less than 10';
    } else if (resultScore <= 20) {
      showText = 'it\'s less than 20';
    } else if (resultScore <= 25) {
      showText = 'it\'s less than 25';
    } else if (resultScore <= 30) {
      showText = 'it\'s less than 30';
    } else {
      showText = 'you so bad';
    }
    return showText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(scorePhase),
    );
  }
}
