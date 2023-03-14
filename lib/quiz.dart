import 'package:flutter/material.dart';
import 'Quiz/quiz.dart';
import 'Quiz/result.dart';

const questions = [
  {
    "questionText": "How Many SDG Goals are there?",
    "answers": [
      {"text": "17", "score": 1},
      {"text": "15", "score": 0},
      {"text": "16", "score": 0},
      {"text": "18", "score": 0},
    ]
  },
  {
    "questionText":
        "What is the name of the SDG Goal that aims to end poverty?",
    "answers": [
      {"text": "Goal 1", "score": 1},
      {"text": "Goal 2", "score": 0},
      {"text": "Goal 3", "score": 0},
      {"text": "Goal 4", "score": 0},
    ]
  },
  {
    "questionText": "What is the name of the SDG Goal that aims to end hunger?",
    "answers": [
      {"text": "Goal 1", "score": 0},
      {"text": "Goal 2", "score": 1},
      {"text": "Goal 3", "score": 0},
      {"text": "Goal 4", "score": 0},
    ]
  },
  {
    "questionText":
        "What is the name of the SDG Goal that aims to ensure healthy lives and promote well-being for all at all ages?",
    "answers": [
      {"text": "Goal 1", "score": 0},
      {"text": "Goal 2", "score": 0},
      {"text": "Goal 3", "score": 1},
      {"text": "Goal 4", "score": 0},
    ]
  },
  {
    "questionText":
        "What is the name of the SDG Goal that aims to ensure inclusive and equitable quality education and promote lifelong learning opportunities for all?",
    "answers": [
      {"text": "Goal 1", "score": 0},
      {"text": "Goal 2", "score": 0},
      {"text": "Goal 3", "score": 0},
      {"text": "Goal 4", "score": 1},
    ]
  }
];

var totalScore = 0;

class QuizWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizWidgetState();
  }
}

class QuizWidgetState extends State<QuizWidget> {
  var questionIndex = 0;
  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
      print("I Incremented");
    });

    if (questionIndex < questions.length) {
      print("we have more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("SDG Quiz"),
          ),
          body: questionIndex < questions.length
              ? Quiz(answerQuestion, questions, questionIndex)
              : Result(totalScore)),
    );
  }
}
