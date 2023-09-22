import 'package:animation/models/trip.dart';
import 'package:animation/view/details/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TripList extends StatefulWidget {
  const TripList({super.key});

  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  final List<Widget> _tripTiles = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _addTrips();
    });
    // _addTrips();
  }

  void _addTrips() {
    // get data from db

    List<Trip> trips = [
      Trip(
        title: AppLocalizations.of(context).country1,
        price: '7500',
        nights: '7',
        img: 'images/aus.jpg',
      ),
      Trip(
          title: AppLocalizations.of(context).country2,
          price: '7000',
          nights: '3',
          img: 'images/eifeltower_generated.jpg'),
      Trip(
        title: AppLocalizations.of(context).country3,
        price: '1800',
        nights: '4',
        img: 'images/singa.jpg',
      ),
      Trip(
          title: AppLocalizations.of(context).country4,
          price: '1500',
          nights: '5',
          img: 'images/malaysia.jpg'),
      Trip(
        title: AppLocalizations.of(context).country5,
        price: '1000',
        nights: '3',
        img: 'images/maldives.jpg',
      ),
      Trip(
          title: AppLocalizations.of(context).country6,
          price: '950',
          nights: '2',
          img: 'images/srilanka1.jpg'),
      Trip(
        title: AppLocalizations.of(context).country6,
        price: '350',
        nights: '4',
        img: 'images/goa.jpg',
      ),
    ];

    Future ft = Future(() {});
    for (var trip in trips) {
      ft = ft.then((_) {
        return Future.delayed(const Duration(milliseconds: 200), () {
          _tripTiles.add(_buildTile(trip));
          _listKey.currentState?.insertItem(_tripTiles.length - 1);
        });
      });
    }
  }

  Widget _buildTile(Trip trip) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              trip: trip,
            ),
          ),
        );
        // Navigator.pushNamed(context,"/DetailsPage") ;
      },
      contentPadding: const EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(
          tag: "location-img-${trip.img}",
          child: Image.asset(
            '${trip.img}',
            height: 50.0,
          ),
        ),
      ),
      trailing: Text(
        '\$ ${trip.price}/-',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }

  Tween<Offset> offset =
      Tween(begin: const Offset(1, 0), end: const Offset(0, 0));

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: _listKey,
        initialItemCount: _tripTiles.length,
        itemBuilder: (context, index, Animation) {
          return SlideTransition(
            child: _tripTiles[index],
            position: Animation.drive(offset),
          );
        });
  }
}
