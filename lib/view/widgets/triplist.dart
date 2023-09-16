import 'package:animation/helpers/colors.dart';
import 'package:animation/models/trip.dart';
import 'package:flutter/material.dart';

class TripList extends StatefulWidget {
  const TripList({super.key});

  @override
  State<TripList> createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  List tripTiles = [];
  final GlobalKey listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    addTrips();
  }

  void addTrips() {
    List<Trip> trips = [
      Trip(
        title: 'Paris',
        price: '300000',
        night: '5',
        img: 'images/eifeltower_generated.jpg',
      ),
      Trip(
        title: 'Goa',
        price: '12000',
        night: '7',
        img: 'images/goa.jpg',
      ),
      Trip(
        title: 'SriLanka',
        price: '30000',
        night: '5',
        img: 'images/srilanka1.jpg',
      ),
      Trip(
        title: 'Malaysia',
        price: '35000',
        night: '5',
        img: 'images/malaysia.jpg',
      ),
    ];

    for (var trip in trips) {
      tripTiles.add(_buildTile(trip));
    }
  }

  Widget _buildTile(Trip trip) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, "/DetailsPage");
      },
      contentPadding: EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${trip.night} night',
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: ColorClass.blueColor),
          ),
          Text(
            trip.title,
            style: TextStyle(fontSize: 20, color: ColorClass.greyColor),
          )
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset("images/${trip.img}", height: 50),
      ),
      trailing: Text('${trip.price}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: listKey,
      itemCount: tripTiles.length,
      itemBuilder: (context, index) {
        return tripTiles[index];
      },
    );
  }
}
