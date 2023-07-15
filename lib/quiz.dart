import 'package:flutter/material.dart';
import 'package:quizapp2/question_screen.dart';
import 'decorate.dart';
import 'homePage.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => QuizState();
}

class QuizState extends State<Quiz> {
  late bool activeScreen;
  @override
  void initState() {
    super.initState();
    activeScreen = true;
  }

  void switchScreen() {
    setState(() {
      activeScreen = false;
    });
  }

  @override
  Widget build(context) { 
    return MaterialApp(
      home: Container(
        decoration: decorate.boxDecorate,
        child: SafeArea(
          child: activeScreen ? homePage(switchScreen) : const QuestionScreen(),
        ),
      ),
    );
  }
}
