import 'package:animation/helpers/colors.dart';
import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 30,
          color: ColorClass.blueLightColor,
          fontWeight: FontWeight.bold),
    );
  }
}
