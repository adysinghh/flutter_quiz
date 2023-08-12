import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          minimumSize: const Size(500, 62),
          padding: const EdgeInsets.all(20),
          backgroundColor: const Color.fromRGBO(200, 190, 134, 1),
          foregroundColor: Colors.white),
      onPressed: onTap,
      child: Text(
        answerText,
        style: const TextStyle(fontSize: 19),
      ),
    );
  }
}
