// ignore_for_file: prefer_if_null_operators, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class button extends StatelessWidget {
  button({
    super.key,
    required this.text,
    required this.size,
    required this.onPress,
    this.icon,
  });

  static int ms = 100;
  final IconData? icon;
  final String text;
  final double size;
  final VoidCallback onPress;
  double? sizeOfIcon;

  @override
  Widget build(context) {
    if (icon != null) {
      sizeOfIcon = 24;
    } else {
      sizeOfIcon = 0;
    }

    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth-60,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff3c1053),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40)
        ),
        onPressed: onPress,
        icon: Icon(
          icon,
          size: sizeOfIcon,
        ),
        label: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: size),
          ),
        ),
      ),
    );
  }
}
