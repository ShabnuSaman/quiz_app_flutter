import 'package:flutter/material.dart';
import 'package:udemy_quiz/ans_button.dart';
import 'package:udemy_quiz/data/data.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key, required this.onSelectedAnswers});

  final void Function(String answers) onSelectedAnswers;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswers) {
    widget.onSelectedAnswers(selectedAnswers);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ...currentQuestion.getShuffleAnswer().map((answers) {
              return AnswerButton(onTap: (){answerQuestion(answers);}, answerText: answers);
            }),
          ],
        ),
      ),
    );
  }
}
