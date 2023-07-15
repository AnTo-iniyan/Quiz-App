// ignore_for_file: use_build_context_synchronously, camel_case_types, no_logic_in_create_state, must_be_immutable
import 'package:flutter/material.dart';
import 'button.dart';
import 'decorate.dart';

class homePage extends StatefulWidget {
  const homePage(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  State<homePage> createState() => _homePageState(startQuiz);
}

class _homePageState extends State<homePage> {
  _homePageState(this.startQuiz);
  final void Function() startQuiz;
  bool show = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        show = true;
      });
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: decorate.boxDecorate,
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(top: 100),
              child: Hero(
                tag: 'logo',
                child: Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    'assets/images/quiz-logo.png', // Replace with your own image path
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: AnimatedOpacity(
              opacity: show ? 1 : 0,
              duration: const Duration(milliseconds: 1500),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 230,
                ),
                // height: 55,
                width: 255,
                child: button(
                  text: 'Start Quiz',
                  size: 20,
                  onPress: startQuiz,
                  icon: Icons.arrow_circle_right_rounded,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
