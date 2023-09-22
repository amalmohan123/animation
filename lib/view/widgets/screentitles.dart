import 'package:animation/helpers/colors.dart';
import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0,end: 1),
      duration: const Duration(milliseconds:1000),
      builder: (BuildContext context, double val, Widget? child) {
        return Opacity(
          opacity: val,
          child: Padding(padding: EdgeInsets.only(top: val *50),
          child: child,),
        );
      },
      child: Text(
        text,
        
        style: const TextStyle(
            fontSize: 28,
          
            color:ColorClass.blueLightColor,
            fontWeight: FontWeight.w900),
      ),
    );
  }
}
