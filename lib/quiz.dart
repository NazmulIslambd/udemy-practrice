import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {@required this.answerQuestion,
      @required this.question,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        question[questionIndex]['questionText'],
      ),
      // nested map list declare here
      // ... use for into answer of question map
      // as list<String > use for to know Dart here is have a list

      ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score']), answer['text']);
      }).toList(),
    ]);
  }
}
