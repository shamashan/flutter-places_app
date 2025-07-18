import 'package:flutter/material.dart';
import 'package:placesapp/screens/place_detail_screen.dart';
import './screens/add_place_screen.dart';
import 'package:provider/provider.dart';

import 'providers/great_places.dart';
import 'screens/places_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        routes: {
          AddPlacesScreen.routeName: (ctx) => AddPlacesScreen(),
          PlaceDetailsScreen.routeName: (ctx) => PlaceDetailsScreen(),
        },
        home: PlacesListScreen(),
      ),
    );
  }
}
