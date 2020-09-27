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
      'answer': [
        {'text':'black','score':50},
        {'text':'Blue','score':8},
        {'text':'White','score':5},
        {'text':'Green','score':3},
         
      ]
    },
    {
      'questionText': 'What\'s your favorite Animal ?',
      'answer': [
        {'text':'Cow','score':10},
        {'text':'Cat','score':8},
        {'text':'Dog','score':5},
        {'text':'Lion','score':3},
         
      ]
    },
    {
      'questionText': 'What\'s your favorite Teacher ?',
      'answer': [
        {'text':'Nazmul','score':10},
        {'text':'Maz','score':8},
        {'text':'Ali','score':5},
        {'text':'Akbar','score':3},
         
      ]
    },

  ];
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
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
            :End(_totalScore) ,
      ),
    );
  }
}
