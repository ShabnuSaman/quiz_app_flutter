import 'package:flutter/material.dart';
import 'package:udemy_quiz/question_summary/question_identifier.dart';

class ItemSummary extends StatelessWidget {
  ItemSummary(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    print(itemData);
    final isCorrectAnswer =
        itemData["user_answers"] == itemData["correct_answers"];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          // questionIndex: itemData["question_index"]?? "",
          questionIndex: itemData["question_inedx"] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(itemData["quesion"] ?? ""),
            // const SizedBox(height: 5,),
            // Text(itemData["user_answers"] ?? ""),
            // Text(itemData["correct_answers"] ?? ""),
            Text(itemData["quesion"] as String),
            const SizedBox(
              height: 5,
            ),
            Text(itemData["user_answers"] as String),
            Text(itemData["correct_answers"] as String),
          ],
        ))
      ],
    );
  }
}
