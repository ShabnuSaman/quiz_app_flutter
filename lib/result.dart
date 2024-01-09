import 'package:flutter/material.dart';
import 'package:udemy_quiz/data/data.dart';
import 'package:udemy_quiz/question_summary/summary.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.choosenAnswer,required this.onRestart, super.key});

  final List<String> choosenAnswer;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryAnswer() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add(
        {
          "question_index": "${i+1}",
          "quesion": questions[i].question,
          "correct_answers": questions[i].answers[0],
          "user_answers": choosenAnswer[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryAnswer();
    final numberOfQuestion = questions.length;
    final correctAnswer = summaryData.where((data) {
      return data["correct_answers"] == data["user_answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " The correct answer is $correctAnswer out of $numberOfQuestion....!",
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: onRestart, child: const Text("Restart Quiz"))
          ],
        ),
      ),
    );
  }
}
