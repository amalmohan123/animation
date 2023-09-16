import 'package:animation/controller/animated_provider.dart';
import 'package:animation/view/widgets/triplist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/screentitles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});




  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return Consumer<AnimatedProvider>(
    //   builder: (context, value, child) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/2457327_new.jpg'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                SizedBox(
                  height: 160,
                  child: ScreenTitle(text: "YoYo Trips"),
                ),
                Flexible(
                  child: TripList(),
                )
              ],
            ),
          ),
        );
      } 
    // );
  }
// }
