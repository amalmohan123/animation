
import 'package:animation/view/widgets/triplist.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer_butt.dart';
import '../widgets/screentitles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return Consumer<AnimatedProvider>(
    //   builder: (context, value, child) {
    return Scaffold(
      drawer:  DrawButton(),
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
            const SizedBox(height: 10),
            SizedBox(
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ScreenTitle(text: AppLocalizations.of(context).textTitle),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Flexible(
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
