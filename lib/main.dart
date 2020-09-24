import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?',
      'What\'s your favorite man color ?',

      // {
      //   'questionText': 'What\'s your favorite color ?',
      //   'answer': ['black', 'blue', 'green', 'white']
      // },

      // {
      //   'questionText': 'What\'s your favorite animal ?',
      //   'answer': ['dog', 'rebbit', 'cow', 'crow']
      // },
      // {
      //   'questionText': 'What\'s your favorite colors you choose for a man?',
      //   'answer': ['black_man', 'blue_man', 'green_man', 'white_man']
      // }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(children: [
          Question(question[_questionIndex] //['questionText'],
              ),
          // nested map list declear here
          // ... use for into answer of question map
          // as list<String > use for to know Dart here is have a list
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),

          // ...(question[_questionIndex]['answer'] as List<String>).map((answer) {
          //   return Answer(_answerQuestion, answer);
          // }).toList(),
        ]),
      ),
    );
  }
}
