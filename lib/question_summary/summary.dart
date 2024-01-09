import 'package:flutter/material.dart';
import 'package:udemy_quiz/question_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summary, {super.key});
  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            return ItemSummary(data);
          }).toList(),
        ),
      ),
    );
  }
}


//  Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   data["question_index"] ?? "",
//                   style: const TextStyle(
//                       fontSize: 35,
//                       color: Colors.red,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(
//                   width: 30,
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         data["quesion"] ?? "",
//                         style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w500),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         data["user_answers"] ?? "",
//                         style: const TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.w400,color: Color.fromARGB(255, 146, 65, 59)),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         data["correct_answers"] ?? "",
//                         style: const TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.w400,color: Color.fromARGB(255, 8, 34, 9)),
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             );
