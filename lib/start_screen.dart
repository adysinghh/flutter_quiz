import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assest/images/quiz-logo.png',
            width: 400,
            color: const Color.fromARGB(150, 251, 250, 249),
          ),
          const SizedBox(height: 80),
          const Text(
            'LEARN FLUTTER',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
                minimumSize: const Size(400, 62)),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 22),
            ),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
