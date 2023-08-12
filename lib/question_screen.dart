import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var curerrentQindex = 0;
  void anserQuestion() {
    //curerrentQindex = curerrentQindex + 1;
    //curerrentQindex += 1;
    setState(() {
      curerrentQindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final CurrenQuestion = questions[curerrentQindex];
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              CurrenQuestion.text,
              style: const TextStyle(
                fontSize: 32,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...CurrenQuestion.getShuffeledAnswers().map((answerno) {
              return AnswerButton(
                answerText: answerno,
                onTap: anserQuestion,
              );
            }),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
