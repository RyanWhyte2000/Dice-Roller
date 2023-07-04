import 'package:flutter/material.dart';

class QuizStarter extends StatefulWidget {
  QuizStarter({super.key});
  @override
  State<QuizStarter> createState() {
    return _QuizStarter();
  }
}

class _QuizStarter extends State<QuizStarter> {
  void startQuiz() {
    setState(() {});
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 200, color: Color.fromARGB(122, 253, 251, 251)),
        // Opacity(
        //     opacity: 0.5,
        //     child: Image.asset('assets/images/quiz-logo.png', width: 200)),
        const SizedBox(height: 30),
        const Text(
          ' Learn flutter the fun way!',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
