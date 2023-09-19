import 'package:animation/models/trip.dart';
import 'package:animation/view/details/details.dart';
import 'package:flutter/material.dart';

class TripList extends StatefulWidget {
  const TripList({super.key});

  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  final List<Widget> _tripTiles = [];
  final GlobalKey _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addTrips();
  }

  void _addTrips() {
    // get data from db

    List<Trip> trips = [
      Trip(
          title: 'Paris',
          price: '7000',
          nights: '3',
          img: 'images/eifeltower_generated.jpg'),
      Trip(
          title: 'Malaysia',
          price: '1500',
          nights: '5',
          img: 'images/malaysia.jpg'),
      Trip(
          title: 'SriLanka',
          price: '950',
          nights: '2',
          img: 'images/srilanka1.jpg'),
      Trip(
        title: 'Goa',
        price: '400',
        nights: '4',
        img: 'images/goa.jpg',
      ),
    ];

    for (var trip in trips) {
      _tripTiles.add(_buildTile(trip));
    }
  }

  Widget _buildTile(Trip trip) {
    return ListTile(      
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(trips: trip),
          ),

        );
          // Navigator.pushNamed(context,"/DetailsPage") ;
      },
      contentPadding: const EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(
            '${trip.nights} nights',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 106, 68, 159),
            ),
          ),
          Text(
            trip.title,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 16, 134, 232),
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          '${trip.img}',
          height: 50.0,
        ),
      ),
      trailing: Text(
        '\$ ${trip.price}/-',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _tripTiles.length,
        itemBuilder: (context, index) {
          return _tripTiles[index];
        });
  }
}
