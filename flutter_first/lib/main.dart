import 'package:flutter/material.dart';
import 'package:flutter_first/answer.dart';
import 'package:flutter_first/quiz.dart';
import './Question.dart';

class MyApp extends StatefulWidget {
  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['Red', 'Blue', 'Yellow', 'white']
    },
    {
      'questionText': 'who is your favorite animal?',
      'answers': ['Dog', 'Cat', 'Rabit', 'Gota']
    },
    {
      'questionText': 'Who is your favorite polititian?',
      'answers': ['Mahi', 'Rahi', 'Anu', 'Saji']
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {}

    setState(() {
      _questionIndex += 1;
    });

    print('answer ' + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quitz(
                  questions: _questions,
                  answerQuestions: _answerQuestion,
                  questionIndex: _questionIndex)
              : Center(child: Text("good"))),
    );
  }
}

void main() {
  runApp(MyApp());
}
