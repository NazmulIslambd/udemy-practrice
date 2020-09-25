import 'package:flutter/material.dart';
import 'package:flutter_course/end.dart';
// import './question.dart';
// import './answer.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _question = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answer': ['black', 'blue', 'green', 'white']
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answer': ['dog', 'rebbit', 'cow', 'crow']
    },
    {
      'questionText': 'What\'s your favorite colors you choose for a man?',
      'answer': ['black_man', 'blue_man', 'green_man', 'white_man']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                question: _question,
                questionIndex: _questionIndex,
              )
            :End() ,
      ),
    );
  }
}
