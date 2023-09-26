import 'package:animation/models/trip.dart';
import 'package:animation/view/widgets/heart.dart';
import 'package:animation/view/widgets/lipsum.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.trip});
  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const DrawButton(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            child: Hero(
              tag: "location-img-${trip.img}",
              child: Image.asset(
                "${trip.img}",
                // height: 360,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const SizedBox(height: 30),
          ListTile(
            title: Text(
              trip.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: Text(
              '${trip.nights} nights Stay for only  ${trip.price} /-',
            ),
            trailing: const HeartButton(),
          ),
          const Padding(
            padding: EdgeInsets.all(18),
            child: Lipsim(),
          ),
        ],
      ),
    );
  }
}
