import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return co(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/2205_w023_n001_2320b_p1_2320.jpg'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter
            ),
          ),
        ),
      ),
    );
  }
}
