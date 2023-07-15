// ignore_for_file: file_names, library_private_types_in_public_api, no_logic_in_create_state, camel_case_types

import 'package:flutter/material.dart';
import 'decorate.dart';
import 'quiz.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 1500),
          pageBuilder: (_, __, ___) => const Quiz(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: decorate.boxDecorate,
        child: Center(
          child: Hero(
            tag: 'logo',
            child: Image.asset(
              'assets/images/quiz-logo.png', // Replace with your own image path
              width: 400,
              height: 400,
            ),
          ),
        ),
      ),
    );
  }
}

