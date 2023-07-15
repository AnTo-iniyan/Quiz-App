import 'package:flutter/material.dart';
import 'decorate.dart';
import 'SplashScreen.dart';
// import 'package:quiz_app/homePage.dart';

// ignore: camel_case_types
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: decorate.boxDecorate,
        child: const SafeArea(
          child: SplashScreen(),
        ),
      ),
    );
  }
}
