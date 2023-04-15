import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

@override
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex ^ 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
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
