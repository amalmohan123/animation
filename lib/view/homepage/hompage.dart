import 'package:animation/view/widgets/triplist.dart';
import 'package:flutter/material.dart';
import '../widgets/screentitles.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            const SizedBox(
              height: 160,
              child: ScreenTitle(text: "YoYo Trips"),
            ),
            const SizedBox(height: 20),
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
