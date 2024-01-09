import 'package:udemy_quiz/model/question.dart';

List<QuizQuestions> questions = [
  QuizQuestions("what are the building blocks of Flutter UIs?",
      ["Widgets", "Components", "Blocks", "Fuctions"]),
  QuizQuestions("How are flutter UI builds", [
    "By combining widget code",
    "By combinig in visual editor",
    "By defining widgets in config files",
    "By using xcode for ios and android studio for android"
  ]),
  QuizQuestions("Whats the purpose of stateful widget", [
    "Ipdate UI as data changes",
    "Update data as UI changes",
    "Ignore UI that doesnot depend on data",
    "Render UI  that does not depend on data"
  ]),
  QuizQuestions(
      "Which widget should you try more often: Stateless or Stateful widget",
      ["Stateless widget",
      "Stateful Widget",
      "Both are equal",
      "None of the above"]),
      QuizQuestions("What happen if you change data in a StatelessWidget", [
        "The UI does not update",
        "The UI is update",
        "The closest StatefulWidget are updated",
        "Any nested StatefulWidget are updated"
      ]),
      QuizQuestions("How should you update your data inside of StatefulWidget", ["By calling setState",
      "By calling updateState",
      "By calling update UI",
      "By calling updateDataR"])
];
