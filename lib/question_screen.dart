import 'package:flutter/material.dart';
import 'button.dart';
import 'Data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreen();
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 120, left: 20),
          child: Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        ...currentQuestion.answers.map((answer) {
          return Container(
            // height: 90,
            padding: const EdgeInsets.only(top: 30),
            child: button(
              text: answer,
              size: 20,
              onPress: () {},
            ),
          );
        }),
      ],
    );
  }
}
