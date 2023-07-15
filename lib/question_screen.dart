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
        Container(
          height: 120,
          padding: const EdgeInsets.only(top: 70),
          child: button(
            text: currentQuestion.answers[0],
            size: 20,
            onPress: () {},
          ),
        ),
        Container(
          height: 90,
          padding: const EdgeInsets.only(top: 40),
          child: button(
            text: currentQuestion.answers[1],
            size: 20,
            onPress: () {},
          ),
        ),
        Container(
          height: 90,
          padding: const EdgeInsets.only(top: 40),
          child: button(
            text: currentQuestion.answers[2],
            size: 20,
            onPress: () {},
          ),
        ),
        Container(
          height: 90,
          padding: const EdgeInsets.only(top: 40),
          child: button(
            text: currentQuestion.answers[3],
            size: 20,
            onPress: () {},
          ),
        ),
      ],
    );
  }
}
