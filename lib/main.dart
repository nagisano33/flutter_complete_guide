import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _ で private
class _MyAppState extends State<MyApp> {
  // _ で private
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex ^ 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            // RaisedButton
            ElevatedButton(
              child: Text('Answoer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answoer 2'),
              onPressed: () => print('Ans 2 was chosen'),
            ),
            ElevatedButton(
              child: Text('Answoer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
