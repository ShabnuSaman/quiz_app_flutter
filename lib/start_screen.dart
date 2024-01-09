import 'package:flutter/material.dart';

  class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;

  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
              opacity: 0.5,
              child: Image.asset("assets/images/flutterLogo.png")),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton.icon(
              onPressed:startQuiz,
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }
}
