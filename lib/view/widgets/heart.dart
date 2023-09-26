import 'package:animation/helpers/colors.dart';
import 'package:flutter/material.dart';

class HeartButton extends StatefulWidget {
  const HeartButton({super.key});

  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton>
    with SingleTickerProviderStateMixin {
  bool isFav = false;

  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _colorAnimation =
        ColorTween(begin: Colors.blue[600], end: ColorClass.redColor)
            .animate(_controller);

    _sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
            tween: Tween<double>(begin: 30, end: 50), weight: 50),
        TweenSequenceItem<double>(
            tween: Tween<double>(begin: 50, end: 30), weight: 50)
      ],
    ).animate(_controller);

    _controller.addListener(() {
      // print(_controller.value);
      _controller.value;
      // print(_colorAnimation.value);
    _colorAnimation.value;
    });

    _controller.addStatusListener((status) { 
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color: _colorAnimation.value,
            size: _sizeAnimation.value,
          ),
          onPressed: () {
            isFav ? _controller.reverse() : _controller.forward();
          },
        );
      },
    );
  }
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}