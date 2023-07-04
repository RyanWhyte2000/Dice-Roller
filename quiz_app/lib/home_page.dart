import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    // return Container(
    //   decoration: const BoxDecoration(
    //     gradient: LinearGradient(
    //       colors: [Colors.deepPurple, Colors.purple],
    //       begin: startAlignment,
    //       end: endAlignment,
    //     ),
    //   ),
    //   child: Center(
    //     child: QuizStarter(),
    //   ),
    // );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 200, color: Color.fromARGB(122, 253, 251, 251)),
        // Opacity(
        //     opacity: 0.5,
        //     child: Image.asset('assets/images/quiz-logo.png', width: 200)),
        const SizedBox(height: 30),
        Text(
          ' Learn flutter the fun way!',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
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
