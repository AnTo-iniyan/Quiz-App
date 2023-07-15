import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class decorate extends StatelessWidget {
  const decorate({super.key});

  static BoxDecoration boxDecorate = const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xff3c1053),
        Color(0xffad5389),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
