import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(_MyApp());
class _MyApp extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {

  var _questionIndex = 0;

void _answerQuestion(){

setState(() {
  _questionIndex = _questionIndex + 1;
  print(_questionIndex);
});

  
}
  @override
  Widget build(BuildContext context) {
    var question =['What\'s your favorite color ?',
    'What\'s your favorite animal ?'
    'What\'s your favorite dog ?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(children: [
          Question(question[_questionIndex]),
        
         Answer(_answerQuestion),
         Answer(_answerQuestion),
         Answer(_answerQuestion),
          
        ]),
      ),
    );
  }
}
