import 'package:flutter/material.dart';
import 'package:udemy_quiz/result.dart';
import 'package:udemy_quiz/data/data.dart';
import 'package:udemy_quiz/quiz_question.dart';
import 'package:udemy_quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = "question-screen";
    });
  }

  void chooseAnswers(String answers) {
    selectedAnswers.add(answers);

    if (questions.length == selectedAnswers.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "question-screen") {
      screenWidget = QuestionScreen(onSelectedAnswers: chooseAnswers);
    }
    if (activeScreen == "result-screen") {
      screenWidget =
          ResultScreen(choosenAnswer: selectedAnswers, onRestart: restartQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
